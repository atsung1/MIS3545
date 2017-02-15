use AdventureWorks2012;

/*Find out all the customers from Sales.Customer table.*/
SELECT *
FROM Sales.Customer;


/*Find out all the sales orders from Sales.SalesOrderHeader table.*/
SELECT *
FROM Sales.SalesOrderHeader;


/*Find out sales details about productID 843*/
/*first we did this 
SELECT * 
FROM Sales.SalesOrderDetail
WHERE ProductID = 843;
and then he wanted to teach us to use OR an AND so here's the rest*/
SELECT * 
FROM Sales.SalesOrderDetail
WHERE ProductID = 843 OR ProductID=844 OR ProductID=845;
/* or WHERE ProductID Between 843 and 845; between is inclusive of the end points*/
/* or can use WHERE ProductID in(843,844,845);*/


/*Sales info of all the products of which unit price is between 100 and 200*/
SELECT*
FROM Sales.SalesOrderDetail
where UnitPrice BETWEEN 100 and 200;
/*WHERE UnitPrice <= 200 or UnitPrice >=100; this doesn't work because it returns EVERYTHING*/
/*or use WHERE UnitPrice <= 200 and UnitPrice >=100;*/

/*All the store names*/
SELECT Name
FROM Sales.Store;


/*Find out store names that contain "Bike" */
SELECT Name
FROM Sales.Store
WHERE Name like '%bikes' COLLATE SQL_Latin1_General_CP1_CS_AS;
/* % is for other words */
/* Collate phrase is for making the search case-sensitive*/

/*info of all the credit cards*/
SELECT *
FROM Sales.CreditCard;


/* A list of credit card types*/
SELECT DISTINCT CardType
FROM Sales.CreditCard;
/*could also SELECT* and then use GROUP BY CardType, but it's faster to use DISTINCT*/


