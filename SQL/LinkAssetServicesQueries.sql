--1 Show All Investors
SELECT	inv.investor_id,
		inv.forename,
		inv.surname,
		inv.business,
		inv.business_name,
		inv.active
FROM	dbo.Investors	inv

--2 Show All Investors that are active order by surname
SELECT	inv.investor_id,
		inv.forename,
		inv.surname,
		inv.business,
		inv.business_name,
		inv.active
FROM	dbo.Investors	inv
WHERE	inv.active = 'Y' or inv.active = 'y'
ORDER BY	inv.surname

--3 Show all orders for investor 12 in january 2012
SELECT	*
FROM	dbo.orders
WHERE	investor_id = 12
		and
		order_date LIKE '2012-01%'

--4 Show the number of orders and quantities for investor 12 during january 2012 grouped by fund name
--Not complete
SELECT	orders.investor_id,
		funds.fund_name,
		orders.quantity
FROM	dbo.orders	orders	WITH (NOLOCK)
INNER JOIN dbo.funds funds	WITH (NOLOCK) ON orders.fund_id = funds.fund_id

--5 Show all investors who represent a company
SELECT	CONCAT(forename, surname) AS 'mail_name',
		business_name
FROM	dbo.investors
WHERE	business = 'Y' or business = 'y'

--6 Add extra mail merge column
--Not complete
SELECT	CONCAT(forename, surname) AS 'mail_name',
		business_name
FROM	dbo.investors
WHERE	business = 'Y' or business = 'y'