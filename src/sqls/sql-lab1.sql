USE AdventureWorks;
--wszystkie wiersze (wszystkie kolumny) tabeli [SalesOrderHeader]
SELECT * FROM Sales.SalesOrderHeader;
--3 wybrane kolumny tabeli [SalesOrderHeader] posortowanie wg kolumny ModifiedDate malej�co
SELECT SalesOrderId, RevisionNumber, OrderDate FROM Sales.SalesOrderHeader;
--3 kolumny tabeli [Person].[Contact], posortowane wg LastName malej�co i FirstName rosn�co
SELECT ContactID, LastName, FirstName FROM Person.Contact ORDER BY LastName DESC, FirstName ASC;
--wszystkie wiersze z tabeli Person.Contact zawieraj�ce �Michael� w kolumnie FirstName, posortowane wg kolumny Lastname
SELECT * FROM Person.Contact WHERE FirstName LIKE '%Michael%' ORDER BY LastName;
--wszystkie dane kontaktowe (tabela Person.Contact) os�b o innym imieniu ni� �Michael� i nazwisku zaczynaj�cym si� na Ac (zapytanie zwr�ci 4 wiersze)
SELECT * FROM Person.Contact WHERE FirstName != 'Michael' AND LastName LIKE 'Ac%';
--wszystkie dane kontaktowe zmodyfikowane mi�dzy 1, a 22 wrze�nia 2003 (928 wierszy)
SELECT * FROM Person.Contact WHERE ModifiedDate BETWEEN '2003-09-01' AND '2003-09-22';
--10 ostatnio zatrudnionych pracownik�w
SELECT TOP 10 * FROM HumanResources.Employee ORDER BY ModifiedDate DESC;
--10 najstarszych pracownik�w p�ci �e�skiej
SELECT TOP 10 * FROM HumanResources.Employee WHERE Gender = 'F' ORDER BY BirthDate ASC;
--pracownik�w, kt�rych stanowisko (kolumna Title) zaczyna si� na �Production Technician�, lub �Tool Designer�, posortowani wg nazwy stanowiska
SELECT TOP 10 * FROM HumanResources.Employee WHERE Title LIKE 'Production Technician%' OR Title LIKE 'Tool Designer%' ORDER BY Title;
--nazwy stanowisk bez duplikat�w (67 wierszy)
SELECT DISTINCT Title FROM HumanResources.Employee;
--3 kolumny z tabeli Person.Contact, korzystaj�c z alias�w, przet�umacz nazwy kolumn w wyniku na j�zyk polski: FirstName=Imie, LastName=Nazwisko, Phone=Telefon
SELECT FirstName AS Imie, LastName AS Nazwisko, Phone AS Telefon FROM Person.Contact;