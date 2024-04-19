CREATE DATABASE ChatBot;

USE ChatBot;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    isAdmin BOOLEAN DEFAULT false
);

CREATE TABLE Questions (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL
);

CREATE TABLE Answers (
    answer_id INT AUTO_INCREMENT PRIMARY KEY,
    answer_text TEXT NOT NULL
);

CREATE TABLE QuestionAnswers (
    question_id INT,
    answer_id INT,
    PRIMARY KEY (question_id, answer_id),
    FOREIGN KEY (question_id) REFERENCES Questions(question_id),
    FOREIGN KEY (answer_id) REFERENCES Answers(answer_id)
);

INSERT INTO Users (username, password, isAdmin) VALUES ('admin', 'admin', true);
INSERT INTO Users (username, password, isAdmin) VALUES ('user', 'user', false);

INSERT INTO Questions (question_text) VALUES ('Jakie funkcje mogą mieć blendery?');
INSERT INTO Answers (answer_text) VALUES ('Blendery mogą mieć funkcje mieszania, kruszenia i siekania.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (1, 1);

INSERT INTO Questions (question_text) VALUES ('Jakie rodzaje kaw można przygotować za pomocą ekspresu?');
INSERT INTO Answers (answer_text) VALUES ('Z ekspresu do kawy można przygotować espresso, latte, cappuccino i inne napoje kawowe.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (2, 2);

INSERT INTO Questions (question_text) VALUES ('Jakie są zalety korzystania z mikrofalówki?');
INSERT INTO Answers (answer_text) VALUES ('Zalety korzystania z mikrofalówki to oszczędność czasu i energii podczas podgrzewania potraw.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (3, 3);

INSERT INTO Questions (question_text) VALUES ('Jakie akcesoria mogą być dołączone do robota kuchennego?');
INSERT INTO Answers (answer_text) VALUES ('Do robota kuchennego można dołączyć akcesoria do siekania, mieszania i wyciskania soków.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (4, 4);

INSERT INTO Questions (question_text) VALUES ('Jakie pojemności mają czajniki elektryczne?');
INSERT INTO Answers (answer_text) VALUES ('Czajniki elektryczne występują w różnych pojemnościach, np. 1.7L, 1.5L, 1.0L.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (5, 5);

INSERT INTO Questions (question_text) VALUES ('Jakie rodzaje chleba można opiekać w tosterze?');
INSERT INTO Answers (answer_text) VALUES ('W tosterze można opiekać różne rodzaje chleba, np. tostowy, pszenny, żytni.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (6, 6);

INSERT INTO Questions (question_text) VALUES ('Jakie funkcje dodatkowe mogą mieć nowoczesne lodówki?');
INSERT INTO Answers (answer_text) VALUES ('Nowoczesne lodówki mogą mieć funkcje takie jak panel dotykowy, dystrybutor wody, czy kamera wewnętrzna.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (7, 7);

INSERT INTO Questions (question_text) VALUES ('Jakie są zalety korzystania z kuchenki gazowej?');
INSERT INTO Answers (answer_text) VALUES ('Zalety korzystania z kuchenki gazowej to szybkie gotowanie, precyzyjna regulacja temperatury.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (8, 8);

INSERT INTO Questions (question_text) VALUES ('Jakie rodzaje potraw można przygotować za pomocą blendera kielichowego?');
INSERT INTO Answers (answer_text) VALUES ('Z blendera kielichowego można przygotować koktajle, zupy kremy, salsy i sosy.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (9, 9);

INSERT INTO Questions (question_text) VALUES ('Jak dbać o ekspres do kawy, aby zachować jego sprawność?');
INSERT INTO Answers (answer_text) VALUES ('Ważne jest regularne odkamienianie ekspresu, aby zachować jego sprawność.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (10, 10);

INSERT INTO Questions (question_text) VALUES ('Jakie zalety ma piekarnik elektryczny?');
INSERT INTO Answers (answer_text) VALUES ('Dzięki piekarnikowi elektrycznemu można zapiekać potrawy bez konieczności monitorowania.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (11, 11);

INSERT INTO Questions (question_text) VALUES ('Jakie zalety ma zmywarka do naczyń?');
INSERT INTO Answers (answer_text) VALUES ('Dzięki zmywarce można skutecznie usunąć zabrudzenia z naczyń przy użyciu gorącej wody i detergentu.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (12, 12);

INSERT INTO Questions (question_text) VALUES ('Jakie zalety ma pralka automatyczna?');
INSERT INTO Answers (answer_text) VALUES ('Pralka automatyczna oszczędza czas i energię w porównaniu do prania ręcznego.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (13, 13);

INSERT INTO Questions (question_text) VALUES ('Jak dbać o lodówkę, aby zachować jej sprawność?');
INSERT INTO Answers (answer_text) VALUES ('Należy regularnie czyścić i rozmrażać lodówkę, aby uniknąć zbierania się lodu i zwiększyć efektywność.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (14, 14);

INSERT INTO Questions (question_text) VALUES ('Jakie są funkcje nowoczesnego piekarnika?');
INSERT INTO Answers (answer_text) VALUES ('Nowoczesny piekarnik może posiadać funkcje pieczenia konwekcyjnego, grillowania, rozmrażania i podgrzewania.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (15, 15);

INSERT INTO Questions (question_text) VALUES ('Jakie są rodzaje odkurzaczy dostępne na rynku?');
INSERT INTO Answers (answer_text) VALUES ('Na rynku dostępne są odkurzacze workowe, bezworkowe, pionowe oraz automatyczne.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (16, 16);

INSERT INTO Questions (question_text) VALUES ('Jak dbać o czajnik elektryczny, aby zachować jego trwałość?');
INSERT INTO Answers (answer_text) VALUES ('Po użyciu czajnika, warto go dokładnie wypłukać i osuszyć, aby uniknąć korozji i zapachu.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (17, 17);

INSERT INTO Questions (question_text) VALUES ('Jakie są rodzaje blenderów dostępnych na rynku?');
INSERT INTO Answers (answer_text) VALUES ('Na rynku dostępne są blendery kielichowe, osobowe, ręczne oraz wysokoprętościowe.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (18, 18);

INSERT INTO Questions (question_text) VALUES ('Jakie są zalety posiadania zmywarki w kuchni?');
INSERT INTO Answers (answer_text) VALUES ('Zmywarka pozwala zaoszczędzić czas i energię, umożliwiając automatyczne mycie naczyń.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (19, 19);

INSERT INTO Questions (question_text) VALUES ('Jakie są funkcje dostępne w piekarniku elektrycznym?');
INSERT INTO Answers (answer_text) VALUES ('Piekarnik elektryczny może posiadać funkcje grzania górnego, dolnego lub obu elementów grzewczych jednocześnie.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (20, 20);

INSERT INTO Questions (question_text) VALUES ('Jakie są rodzaje odkurzaczy dostępnych na rynku?');
INSERT INTO Answers (answer_text) VALUES ('Na rynku dostępne są odkurzacze workowe, bezworkowe, pionowe oraz automatyczne.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (21, 21);

INSERT INTO Questions (question_text) VALUES ('Jak dbać o ekspres do kawy, aby zapewnić mu długą żywotność?');
INSERT INTO Answers (answer_text) VALUES ('Należy regularnie czyścić ekspres do kawy, usuwając osad po kawie oraz kamień z elementów grzewczych.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (22, 22);

INSERT INTO Questions (question_text) VALUES ('Co to jest funkcja No Frost w lodówkach?');
INSERT INTO Answers (answer_text) VALUES ('Funkcja No Frost w lodówkach eliminuje konieczność rozmrażania, utrzymując odpowiednią temperaturę i wilgotność wewnątrz urządzenia.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (23, 23);

INSERT INTO Questions (question_text) VALUES ('Jakie są rodzaje kuchenek gazowych dostępnych na rynku?');
INSERT INTO Answers (answer_text) VALUES ('Na rynku dostępne są kuchenki gazowe z palnikiem tradycyjnym, palnikiem wok oraz palnikiem gazowym podwójnego płomienia.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (24, 24);

INSERT INTO Questions (question_text) VALUES ('Jakie są zalety korzystania z czajnika elektrycznego?');
INSERT INTO Answers (answer_text) VALUES ('Czajnik elektryczny pozwala szybko zagotować wodę, co jest przydatne przy parzeniu herbaty czy przygotowywaniu makaronu.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (25, 25);

INSERT INTO Questions (question_text) VALUES ('Jak dbać o ekspres do kawy z młynkiem?');
INSERT INTO Answers (answer_text) VALUES ('Należy regularnie czyścić młynek w ekspresie do kawy, usuwając resztki kawy i unikając zatykania się ziaren.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (26, 26);

INSERT INTO Questions (question_text) VALUES ('Jakie są funkcje specjalistycznych sokowirówek?');
INSERT INTO Answers (answer_text) VALUES ('Sokowirówki specjalistyczne mogą posiadać funkcje wyciskania soku z warzyw liściastych, takich jak szpinak czy jarmuż.');
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (27, 27);

INSERT INTO Questions (question_text) VALUES ('Jaki jest twój numer telefonu?');
INSERT INTO Questions (question_text) VALUES ('Default answer, if the chatbot dont know question');
INSERT INTO Questions (question_text) VALUES ('Jakie są godziny otwarcia?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie dostawę?');
INSERT INTO Questions (question_text) VALUES ('Czy mogę zarezerwować termin?');
INSERT INTO Questions (question_text) VALUES ('Czy są jakieś aktualne promocje?');
INSERT INTO Questions (question_text) VALUES ('Gdzie znajduje się wasza siedziba?');
INSERT INTO Questions (question_text) VALUES ('Jak długo trwa dostawa?');
INSERT INTO Questions (question_text) VALUES ('Czy akceptujecie płatność kartą kredytową?');
INSERT INTO Questions (question_text) VALUES ('Czy mogę zwrócić produkt?');
INSERT INTO Questions (question_text) VALUES ('Czy mogę skonsultować się z ekspertem w sklepie przed zakupem?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie montaż sprzętu na życzenie klienta?');
INSERT INTO Questions (question_text) VALUES ('Jak długo trwa przeciętnie realizacja zamówienia?');
INSERT INTO Questions (question_text) VALUES ('Czy można dokonać rezerwacji produktu przed jego zakupem?');
INSERT INTO Questions (question_text) VALUES ('Czy istnieje możliwość śledzenia statusu zamówienia online?');
INSERT INTO Questions (question_text) VALUES ('Jakie są zasady dotyczące zwrotu towaru kupionego w sklepie stacjonarnym?');
INSERT INTO Questions (question_text) VALUES ('Czy można umówić się na serwis techniczny w domu?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie usługi doradztwa technicznego w sklepie?');
INSERT INTO Questions (question_text) VALUES ('Czy można negocjować cenę zakupionego sprzętu?');
INSERT INTO Questions (question_text) VALUES ('Jakie są preferowane metody kontaktu w przypadku pytań dotyczących zakupów?');
INSERT INTO Questions (question_text) VALUES ('Czy istnieje możliwość zamówienia produktu na życzenie?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie usługi serwisu gwarancyjnego?');
INSERT INTO Questions (question_text) VALUES ('Czy mogę otrzymać fakturę VAT na zakupiony towar?');
INSERT INTO Questions (question_text) VALUES ('Jakie są zasady dotyczące zakupu produktów używanych?');
INSERT INTO Questions (question_text) VALUES ('Czy można uzyskać dodatkowe informacje o produkcie przez czat online?');
INSERT INTO Questions (question_text) VALUES ('Jakie są warunki dotyczące zwrotu produktu uszkodzonego w transporcie?');
INSERT INTO Questions (question_text) VALUES ('Czy jestem informowany o zmianach w ofercie poprzez komunikaty na stronie internetowej?');
INSERT INTO Questions (question_text) VALUES ('Czy mogę uzyskać rabat na zakup większej ilości produktów?');
INSERT INTO Questions (question_text) VALUES ('Jakie są terminy realizacji zamówień na produkty spersonalizowane?');
INSERT INTO Questions (question_text) VALUES ('Czy istnieje możliwość wymiany zakupionego produktu na inny model w ciągu pierwszych dni od zakupu?');
INSERT INTO Questions (question_text) VALUES ('Czy udzielacie porad technicznych w zakresie obsługi sprzętu?');
INSERT INTO Questions (question_text) VALUES ('Jak mogę sprawdzić status naprawy zgłoszonego urządzenia?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie usługi serwisu na miejscu?');
INSERT INTO Questions (question_text) VALUES ('Czy można skorzystać z usługi personal shoppera do doradztwa zakupowego?');
INSERT INTO Questions (question_text) VALUES ('Czy istnieje możliwość zakupu produktów na raty bez odsetek?');
INSERT INTO Questions (question_text) VALUES ('Czy można otrzymać pomoc w konfiguracji sieci domowej?');
INSERT INTO Questions (question_text) VALUES ('Jakie są warunki przyjęcia zwrotu produktu po okresie gwarancyjnym?');
INSERT INTO Questions (question_text) VALUES ('Czy sklep prowadzi program wymiany uszkodzonych produktów na nowe?');
INSERT INTO Questions (question_text) VALUES ('Czy udzielacie rabatu na zakup dodatkowych akcesoriów do sprzętu?');
INSERT INTO Questions (question_text) VALUES ('Jak długo trwa proces wymiany uszkodzonego produktu na nowy?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie usługi serwisu pogwarancyjnego?');
INSERT INTO Questions (question_text) VALUES ('Czy można złożyć zamówienie telefonicznie?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie rabaty dla stałych klientów?');
INSERT INTO Questions (question_text) VALUES ('Czy można dokonać zakupu na miejscu?');
INSERT INTO Questions (question_text) VALUES ('Jakie są warunki gwarancji na zakupiony sprzęt?');
INSERT INTO Questions (question_text) VALUES ('Czy można anulować zamówienie?');
INSERT INTO Questions (question_text) VALUES ('Czy mogę zmienić adres dostawy?');
INSERT INTO Questions (question_text) VALUES ('Jakie są opcje płatności dostępne przy zamówieniu online?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie usługi serwisu pogwarancyjnego?');
INSERT INTO Questions (question_text) VALUES ('Jakie są warunki korzystania z programu lojalnościowego?');
INSERT INTO Questions (question_text) VALUES ('Czy można zarezerwować produkt online i odebrać go w sklepie stacjonarnym?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie gwarancję satysfakcji?');
INSERT INTO Questions (question_text) VALUES ('Jakie dokumenty są wymagane przy odbiorze zamówienia?');
INSERT INTO Questions (question_text) VALUES ('Czy można zmienić termin dostawy?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie usługi montażu na wysokości?');
INSERT INTO Questions (question_text) VALUES ('Czy można zamówić ekspresową dostawę?');
INSERT INTO Questions (question_text) VALUES ('Jakie są warunki udzielenia rabatu na pierwsze zakupy?');
INSERT INTO Questions (question_text) VALUES ('Czy można odebrać zamówienie osobiście w magazynie?');
INSERT INTO Questions (question_text) VALUES ('Czy jest możliwość dostarczenia zamówienia w weekend?');
INSERT INTO Questions (question_text) VALUES ('Czy oferujecie możliwość zakupu produktów na raty?');


INSERT INTO Answers (answer_text) VALUES ('Nasz numer to 123-456-789.');
INSERT INTO Answers (answer_text) VALUES ('Nie znam odpowiedzi na to pytanie.');
INSERT INTO Answers (answer_text) VALUES ('Jesteśmy otwarci od poniedziałku do piątku od 9:00 do 17:00.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy dostawę w wybranych obszarach.');
INSERT INTO Answers (answer_text) VALUES ('Oczywiście, proszę podać preferowaną datę i godzinę.');
INSERT INTO Answers (answer_text) VALUES ('Tak, aktualne promocje można znaleźć na naszej stronie internetowej.');
INSERT INTO Answers (answer_text) VALUES ('Nasza siedziba znajduje się w centrum miasta.');
INSERT INTO Answers (answer_text) VALUES ('Czas dostawy zależy od lokalizacji, zazwyczaj trwa od 1 do 3 dni roboczych.');
INSERT INTO Answers (answer_text) VALUES ('Tak, akceptujemy płatność kartą kredytową.');
INSERT INTO Answers (answer_text) VALUES ('Tak, istnieje możliwość zwrotu w ciągu 14 dni od zakupu.');
INSERT INTO Answers (answer_text) VALUES ('Oczywiście, nasi eksperci są gotowi udzielić Ci fachowej porady przed dokonaniem zakupu.');
INSERT INTO Answers (answer_text) VALUES ('Tak, możemy zorganizować montaż zakupionego sprzętu według Twoich preferencji.');
INSERT INTO Answers (answer_text) VALUES ('Czas realizacji zamówienia zależy od dostępności produktu oraz wybranej formy dostawy, ale staramy się jak najszybciej obsłużyć Twoje zamówienie.');
INSERT INTO Answers (answer_text) VALUES ('Tak, możesz zarezerwować produkt na określony termin, aby mieć pewność jego dostępności.');
INSERT INTO Answers (answer_text) VALUES ('Tak, możesz śledzić status swojego zamówienia za pośrednictwem panelu klienta na naszej stronie internetowej.');
INSERT INTO Answers (answer_text) VALUES ('Towar zakupiony w sklepie stacjonarnym można zwrócić w ciągu 14 dni od daty zakupu, zgodnie z regulaminem sklepu.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy usługi serwisowe na miejscu w domu klienta w wybranych przypadkach.');
INSERT INTO Answers (answer_text) VALUES ('Tak, nasi specjaliści służą pomocą i udzielą wszelkich niezbędnych informacji dotyczących naszego asortymentu.');
INSERT INTO Answers (answer_text) VALUES ('W niektórych przypadkach istnieje taka możliwość, prosimy o kontakt z naszym działem obsługi klienta.');
INSERT INTO Answers (answer_text) VALUES ('Najlepiej skontaktować się z nami telefonicznie lub za pośrednictwem formularza kontaktowego na stronie internetowej.');
INSERT INTO Answers (answer_text) VALUES ('Tak, możemy złożyć zamówienie na produkt, który nie jest obecnie dostępny w naszym asortymencie.');
INSERT INTO Answers (answer_text) VALUES ('Tak, zapewniamy pełen zakres usług serwisowych w ramach okresu gwarancyjnego.');
INSERT INTO Answers (answer_text) VALUES ('Oczywiście, przy zakupie oferujemy możliwość wystawienia faktury VAT.');
INSERT INTO Answers (answer_text) VALUES ('Produkty używane objęte są określonymi warunkami gwarancji i zazwyczaj oferowane są po dokonaniu ich pełnej weryfikacji technicznej.');
INSERT INTO Answers (answer_text) VALUES ('Tak, nasz czat online jest dostępny na stronie internetowej, gdzie można uzyskać dodatkowe informacje o produktach.');
INSERT INTO Answers (answer_text) VALUES ('W przypadku otrzymania produktu uszkodzonego w transporcie prosimy o niezwłoczny kontakt z naszym działem obsługi klienta w celu załatwienia sprawy zwrotu i wymiany towaru.');
INSERT INTO Answers (answer_text) VALUES ('Tak, wszelkie zmiany w ofercie oraz promocje są regularnie aktualizowane na naszej stronie internetowej.');
INSERT INTO Answers (answer_text) VALUES ('W niektórych przypadkach oferujemy rabaty przy zakupie większej ilości produktów. Prosimy o kontakt w celu uzyskania szczegółowych informacji.');
INSERT INTO Answers (answer_text) VALUES ('Czas realizacji zamówień na produkty spersonalizowane zależy od złożoności zamówienia i jest uzgadniany indywidualnie z klientem.');
INSERT INTO Answers (answer_text) VALUES ('Tak, w przypadku niezadowolenia z zakupionego produktu istnieje możliwość wymiany na inny model w określonym terminie.');
INSERT INTO Answers (answer_text) VALUES ('Tak, nasz personel techniczny służy pomocą i udzieli wszelkich niezbędnych porad dotyczących obsługi zakupionego sprzętu.');
INSERT INTO Answers (answer_text) VALUES ('Status naprawy zgłoszonego urządzenia można sprawdzić kontaktując się z naszym działem serwisu technicznego.');
INSERT INTO Answers (answer_text) VALUES ('Tak, nasze usługi serwisowe obejmują także naprawy wykonywane na miejscu u klienta.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy usługi personal shoppera, który pomoże w doborze odpowiedniego sprzętu według indywidualnych potrzeb klienta.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy program ratalny bez odsetek przy wybranych formach płatności.');
INSERT INTO Answers (answer_text) VALUES ('Oczywiście, nasi specjaliści służą pomocą w konfiguracji sieci domowej.');
INSERT INTO Answers (answer_text) VALUES ('Produkty zwracane po upływie okresu gwarancyjnego są podlegające określonym warunkom i opłatom.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy program wymiany uszkodzonych produktów na nowe w ramach okresu gwarancyjnego.');
INSERT INTO Answers (answer_text) VALUES ('W niektórych przypadkach oferujemy rabaty przy zakupie dodatkowych akcesoriów w zestawie z głównym produktem.');
INSERT INTO Answers (answer_text) VALUES ('Proces wymiany uszkodzonego produktu na nowy jest uzależniony od dostępności produktu oraz warunków gwarancyjnych i może trwać od kilku dni do kilku tygodni.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy usługi serwisu pogwarancyjnego na preferencyjnych warunkach dla stałych klientów.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można złożyć zamówienie telefonicznie, prosimy o kontakt z naszym działem obsługi klienta.');
INSERT INTO Answers (answer_text) VALUES ('Tak, dla stałych klientów oferujemy atrakcyjne rabaty, szczegóły dostępne są na naszej stronie internetowej.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można dokonać zakupu osobiście w naszym sklepie stacjonarnym, zapraszamy!');
INSERT INTO Answers (answer_text) VALUES ('Warunki gwarancji na zakupiony sprzęt są dostępne na stronie produktu oraz w regulaminie sklepu.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można anulować zamówienie przed jego wysłaniem, prosimy o kontakt z działem obsługi klienta.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można zmienić adres dostawy przed wysyłką zamówienia, prosimy o kontakt z naszym działem obsługi klienta.');
INSERT INTO Answers (answer_text) VALUES ('Opcje płatności dostępne przy zamówieniu online obejmują płatność kartą kredytową, przelew bankowy oraz płatność przy odbiorze.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy usługi serwisu pogwarancyjnego na preferencyjnych warunkach dla stałych klientów.');
INSERT INTO Answers (answer_text) VALUES ('Warunki korzystania z programu lojalnościowego są dostępne na naszej stronie internetowej oraz w regulaminie programu.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można zarezerwować produkt online i odebrać go osobiście w sklepie stacjonarnym po wcześniejszym uzgodnieniu.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy gwarancję satysfakcji, jeśli nie jesteś zadowolony z zakupu, skontaktuj się z nami, aby uzyskać pomoc.');
INSERT INTO Answers (answer_text) VALUES ('Dokumenty wymagane przy odbiorze zamówienia to dowód osobisty oraz potwierdzenie zamówienia.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można zmienić termin dostawy przed wysyłką zamówienia, prosimy o kontakt z naszym działem obsługi klienta.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy usługi montażu na wysokości, prosimy o wcześniejsze uzgodnienie terminu i szczegółów z naszym działem obsługi klienta.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można zamówić ekspresową dostawę za dodatkową opłatą, szczegóły dostępne są podczas składania zamówienia.');
INSERT INTO Answers (answer_text) VALUES ('Warunki udzielenia rabatu na pierwsze zakupy są dostępne na naszej stronie internetowej oraz w regulaminie sklepu.');
INSERT INTO Answers (answer_text) VALUES ('Tak, można odebrać zamówienie osobiście w naszym magazynie po wcześniejszym uzgodnieniu terminu.');
INSERT INTO Answers (answer_text) VALUES ('Tak, istnieje możliwość dostarczenia zamówienia w weekend za dodatkową opłatą, prosimy o kontakt z naszym działem obsługi klienta.');
INSERT INTO Answers (answer_text) VALUES ('Tak, oferujemy możliwość zakupu produktów na raty, szczegóły dostępne są podczas składania zamówienia.');


INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (28, 28);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (29, 29);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (30, 30);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (31, 31);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (32, 32);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (33, 33);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (34, 34);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (35, 35);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (36, 36);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (37, 37);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (38, 38);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (39, 39);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (40, 40);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (41, 41);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (42, 42);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (43, 43);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (44, 44);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (45, 45);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (46, 46);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (47, 47);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (48, 48);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (49, 49);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (50, 50);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (51, 51);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (52, 52);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (53, 53);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (54, 54);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (55, 55);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (56, 56);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (57, 57);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (58, 58);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (59, 59);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (60, 60);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (61, 61);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (62, 62);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (63, 63);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (64, 64);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (65, 65);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (66, 66);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (67, 67);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (68, 68);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (69, 69);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (70, 70);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (71, 71);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (72, 72);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (73, 73);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (74, 74);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (75, 75);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (76, 76);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (77, 77);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (78, 78);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (79, 79);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (80, 80);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (81, 81);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (82, 82);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (83, 83);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (84, 84);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (85, 85);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (86, 86);
INSERT INTO QuestionAnswers (question_id, answer_id) VALUES (87, 87);

