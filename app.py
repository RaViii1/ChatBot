import hashlib
from fuzzywuzzy import fuzz
import nltk

from flask import Flask, render_template, redirect, url_for, request, g, session
import mysql.connector

from flask_mysqldb import MySQL

app = Flask(__name__, static_url_path='/static')
app.secret_key = 'your_secret_key'  # Ustaw własny klucz tajny

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'chatbot'

mysql = MySQL(app)

@app.route('/register', methods=['GET', 'POST'])
def register():
    error_message = None

    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']

        # Hash the password before storing it
        hashed_password = hashlib.sha256(password.encode()).hexdigest()

        cur = mysql.connection.cursor()

        # Check if the username already exists in the database
        cur.execute("SELECT * FROM Users WHERE username = %s", (username,))
        existing_user = cur.fetchone()

        if existing_user:
            # Username already exists, set error message
            error_message = "Username already exists. Please choose a different username."
        else:
            # If the username is unique, insert the new user into the database
            cur.execute("INSERT INTO Users (username, password) VALUES (%s, %s)", (username, hashed_password))
            mysql.connection.commit()
            cur.close()

            return redirect(url_for('login'))

    return render_template('register.html', error_message=error_message)


@app.route('/', methods=['GET', 'POST'])
def login():
    error_message_login = None
    admin_color = False
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']

        hashed_password = hashlib.sha256(password.encode()).hexdigest()

        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM Users WHERE username = %s", (username,))
        user = cur.fetchone()

        if user and user[2] == hashed_password:  # Assuming hashed password is stored in the third column
            # Authentication successful
            isAdmin = user[3]
            session['user_id'] = user[0]
            session['username'] = user[1]
            session['isAdmin'] = user[3]
            if isAdmin:
                redirectlink = 'admin_panel'

            else:
                redirectlink = 'client_chatbot_page'
            return redirect(url_for(redirectlink))
        else:
            error_message_login = "Wrong username or password. Please try again."
    return render_template('login.html', error_message_login=error_message_login)

@app.route('/logout')
def logout():
    session.pop('user_id', None)
    return redirect(url_for('login'))

@app.route('/client_chatbot_page', methods=['GET', 'POST'])
def client_chatbot_page():
    if 'user_id' not in session:
        return redirect(url_for('login'))
    print(session)
    if request.method == 'POST':
        question = request.form.get('chat-input')
        if question:
            chatbot_response = handle_user_question(question)
            return chatbot_response
    if session['isAdmin']:
        # User is an admin
        return render_template('client_chatbot.html', is_admin=True)
    else:
        return render_template('client_chatbot.html', is_admin=False)

@app.route('/admin_panel', methods=['GET', 'POST'])
def admin_panel():
    if 'user_id' not in session or session['isAdmin'] == 0:
        print("You do not have acces to this page your isAdmin status:", session['isAdmin'])
        return redirect(url_for('client_chatbot_page'))
    if request.method == 'POST':
        question = request.form.get('question')
        answer = request.form.get('answer')
        if question and answer:
            cur = mysql.connection.cursor()
            # Insert the question and answer into the database
            sql = "INSERT INTO chatbot_data (question, answer) VALUES (%s, %s)"
            values = (question, answer)
            cur.execute(sql, values)
            mysql.connection.commit()
            cur.close()


    return render_template('admin_panel.html')

def handle_user_question(question):
    try:

        cursor = mysql.connection.cursor()
        cursor.execute("SELECT question, answer FROM chatbot_data")
        data = cursor.fetchall()

        # Search for a matching question
        best_match = None
        best_score = 0
        for row in data:
            stored_question, answer = row
            score = fuzz.token_set_ratio(question.lower(), stored_question.lower())
            if score > best_score:
                best_match = answer
                best_score = score

        # Return the answer if a close match is found, otherwise return a default message
        if best_score >= 70:
            return best_match
        else:
            return "Przepraszam nie rozumiem pytania"

    except Exception as error:
        print("Error processing the request:", error)
        return "I'm sorry, there was an error processing your request."

    finally:
        # Close the cursor
        cursor.close()

if __name__ == '__main__':
    app.run(debug=True)

