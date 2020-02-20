/* SCALAR FUNCTIONS*/

CREATE FUNCTION dbo.Greeting5(@name varchar(30),@age int)   
RETURNS varchar(100)
AS
BEGIN
Declare @Greet AS varchar(100);
SET @Greet='CONGRATULATIONS '+@name+' ON YOUR '+convert(varchar(5),@age)+' Birthday';
RETURN @Greet;
END

select dbo.Greeting5('TEJAS',22) Greetings;

CREATE FUNCTION dbo.Multiply(@n1 int,@n2 int)
RETURNS int
AS
BEGIN 
Declare @Result AS int;
SET @Result=@n1*@n2;
RETURN @Result;
END

SELECT	dbo.Multiply(21,22) Product;


/*TABLE VALUED FUNCTIONS*/

CREATE FUNCTION dbo.GetOrderByOrderDate
(@date1 date,@date2 date)
RETURNS TABLE
AS 
RETURN SELECT * FROM Orders 
WHERE OrderDate BETWEEN @date1 AND @date2;

select * from GetOrdersByOrderDate('1996-07-04','1996-07-08');


CREATE FUNCTION dbo.GetCustomersByCountry
(@Country varchar(20))
RETURNS TABLE
AS 
RETURN SELECT * FROM Customers
WHERE Country=@Country;

select * from GetCustomersByCountry('GERMANY');
