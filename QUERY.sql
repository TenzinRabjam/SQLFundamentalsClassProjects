use alexamara_marina_group;
 select marina.name as marina_name, concat(owner.first_name, " ", owner.last_name) as owner_name, marina_slip.boat_name, marina_slip.rental_fee 
 from marina_slip
 join marina on marina.marina_num = marina_slip.marina_num
 join owner on owner.owner_num = marina_slip.owner_num;

	Write a query that shows the following information about service requests:
	Owner's first and last name (format: First Last) - Name this field "Customer"
	Service Category Description - Name this field "Description"
	Total Estimated Hours per owner and description - Name this field "E_Hours"
	Total Spent Hours per owner and description - Name this field "S_Hours"
	Hint: You'll need to do a GROUP BY clause that groups by two fields.
 
 select concat(owner.first_name, " ",owner.last_name) as customer, service_category.category_description as description,  service_request.est_hours as E_Hours, service_request.spent_hours as S_Hours
 from service_request
 join service_category on service_category.category_num = service_request.category_num
 join marina_slip on  marina_slip.slip_id = service_request.slip_id
 join owner on owner.owner_num = marina_slip.owner_num
 group by service_category.category_description, customer;
  
  
  select concat(author.author_first, " ", author.author_last) as author_name, book.title as book_title, book.price from book 
  join wrote on wrote.book_code = book.book_code
  join author on author.author_num = wrote.author_num;
  
  select book.book_code, book.title, publisher.publisher_name, book.type, book.price from book 
  join publisher on publisher.publisher_code = book.publisher_code;
  
  select branch.branch_name, book.type, sum(inventory.on_hand) as total_books_on_hand from inventory 
  join branch on branch.branch_num = inventory.branch_num
  join book on book.book_code = inventory.book_code
  group by branch.branch_name, book.type;
///////////////////////////////////////////////////////////////////////////

   SELECT REP.FIRST_NAME, REP.LAST_NAME, CUSTOMER.CUSTOMER_NAME, CUSTOMER.CITY, PART.DESCRIPTION FROM CUSTOMER 
       JOIN REP ON REP.REP_NUM = CUSTOMER.REP_NUM 
	JOIN ORDERS ON ORDERS.CUSTOMER_NUM = CUSTOMER.CUSTOMER_NUM 
	JOIN ORDER_LINE ON ORDER_LINE.ORDER_NUM = ORDERS.ORDER_NUM 
    JOIN PART ON PART.PART_NUM = ORDER_LINE.PART_NUM
	ORDER BY 
		CUSTOMER.CUSTOMER_NAME, REP.FIRST_NAME;
////////////////////////////////////////////////////////////////////////////

/*
*Inner Joins, new thing
**/
SELECT 
F.CUSTOMER_NUM, 
F.CUSTOMER_NUM,
S.CUSTOMER_NUM,
S.CUSTOMER_NAME,
S.CITY 
FROM 
CUSTOMER F 
JOIN CUSTOMER S ON S.CITY = F.CITY 
WHERE F.CUSTOMER_NUM > S.CUSTOMER_NUM;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
select e.employee_num, e.first_name, e.last_name, m.employee_num mgr_num, m.first_name ....

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
customer name, number, order num and order date

SELECT 
  CUSTOMER.CUSTOMER_NAME,
  CUSTOMER.CUSTOMER_NUM,
  COALESCE(ORDERS.ORDER_NUM,'N/A') ORDER_NUM, 
  COALESCE(ORDERS.ORDER_DATE,'N/A') ORDER_DATE 
  FROM ORDERS
 RIGHT JOIN CUSTOMER ON CUSTOMER.CUSTOMER_NUM = ORDERS.CUSTOMER_NUM;
 
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 Write a LEFT JOIN query that shows the owners last name, boat name and category number from any service requests (include owners who have no service requests)
 
 SELECT 
	 COALESCE(OWNER.LAST_NAME,'N/A') LAST_NAME, 
	 COALESCE(MARINA_SLIP.BOAT_NAME,'N/A') FIRST_NAME, 
	 COALESCE(SERVICE_REQUEST.CATEGORY_NUM,'N/A') CATEGORY_NUM 
 FROM OWNER
	  LEFT JOIN MARINA_SLIP ON MARINA_SLIP.OWNER_NUM = OWNER.OWNER_NUM
	  LEFT JOIN SERVICE_REQUEST ON SERVICE_REQUEST.SLIP_ID = MARINA_SLIP.SLIP_ID;
	  
	  
SELECT 
	 COALESCE(OWNER.LAST_NAME,'N/A') LAST_NAME, 
	 COALESCE(MARINA_SLIP.BOAT_NAME,'N/A') FIRST_NAME, 
	 COALESCE(SERVICE_REQUEST.CATEGORY_NUM,'N/A') CATEGORY_NUM 
 FROM SERVICE_REQUEST
	  RIGHT JOIN MARINA_SLIP ON MARINA_SLIP.SLIP_ID = SERVICE_REQUEST.SLIP_ID
	  RIGHT JOIN OWNER ON OWNER.OWNER_NUM = MARINA_SLIP.OWNER_NUM;
	  
	 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Using a subquery and the appropriate key word (ANY or ALL), find the book code and book title for each book whose price is greater than the price of 
at least on book that has the type HOR. 

SELECT 
	BOOK.BOOK_CODE, BOOK.TITLE 
FROM BOOK 
WHERE BOOK.PRICE > MIN(BOOK.PRICE = 'HOR');	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Show the Employee name and number and the employees manager name and number. 
Make sure the fields are labeled appropriately (for clarity) in the displayed output.

SELECT CONCAT( E.FIRST_NAME, " ",E.LAST_NAME) EMPLOYEE_NAME, E.EMPLOYEE_NUM EMPLOYEE_NUM, CONCAT(M.FIRST_NAME, " ", M.LAST_NAME) MANAGER_NAME, M.EMPLOYEE_NUM MANAGER_NUM 
 FROM EMPLOYEE E
	 JOIN EMPLOYEE M ON E.MGR_EMPLOYEE_NUM = M.EMPLOYEE_NUM;
 
	  
SELECT CONCAT( E.FIRST_NAME, " ",E.LAST_NAME) EMPLOYEE_NAME, E.EMPLOYEE_NUM EMPLOYEE_NUMBER, CONCAT(M.FIRST_NAME, " ", M.LAST_NAME) MANAGER_NAME, M.EMPLOYEE_NUM MANAGER_EMPLOYEE_NUMBER 
 FROM EMPLOYEE E, EMPLOYEE M
 WHERE E.MGR_EMPLOYEE_NUM = M.EMPLOYEE_NUM
 ORDER BY E.EMPLOYEE_NUM;
 
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/** Insert values shortcut**/
 
INSERT INTO REP
 (REP_NUM, LAST_NAME, FIRST_NAME, STREET, CITY, STATE, ZIP, COMMISSION, RATE)
VALUES
	("66","TRU","ROB", "3 STRETE AVENUE", "DENVER", "CA", "99999", 0 , .05 ), 
	("67","BRU","ROB", "4 STRETE AVENUE", "DENVER", "CA", "99999", 0 , .05 ), 
	("68","YRU","ROB", "5 STRETE AVENUE", "DENVER", "CA", "99999", 0 , .05 ), 
	("69","QRU","ROB", "6 STRETE AVENUE", "DENVER", "CA", "99999", 0 , .05 ), 
	("70","ARU","ROB", "7 STRETE AVENUE", "DENVER", "CA", "99999", 0 , .05 );

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CREATE TABLE MYSTERY LIKE BOOK;

INSERT INTO MYSTERY(BOOK_CODE, TITLE, PUBLISHER_CODE, PRICE) SELECT BOOK_CODE, TITLE, PUBLISHER_CODE, PRICE FROM BOOK WHERE TYPE = "MYS";

/////////////////////////////////////////////////////////////////////////////////////////

CREATE VIEW MAJOR_CUSTOMER AS SELECT CUSTOMER_NUM, CUSTOMER_NAME, BALANCE, CREDIT_LIMIT, REP_NUM FROM CUSTOMER WHERE CREDIT_LIMIT < 10000;

SELECT 
CUSTOMER_NUM, CUSTOMER_NAME FROM MAJOR_CUSTOMER WHERE BALANCE > CREDIT_LIMIT;

SELECT CUSTOMER_NUM, CUSTOMER_NAME FROM CUSTOMER WHERE CREDIT_LIMIT > 10000 AND BALANCE > CREDIT_LIMIT;

CREATE VIEW PART_ORDER 
AS SELECT PART.PART_NUM, PART.DESCRIPTION, PART.PRICE, ORDER_LINE.ORDER_NUM, ORDERS.ORDER_DATE, ORDER_LINE.NUM_ORDERED, ORDER_LINE.QUOTED_PRICE 
FROM ORDER_LINE 
JOIN PART ON PART.PART_NUM = ORDER_LINE.PART_NUM 
JOIN ORDERS ON ORDERS.ORDER_NUM = ORDER_LINE.ORDER_NUM;
 

CREATE VIEW ORDER_TOTAL AS SELECT ORDER_NUM, SUM(NUM_ORDERED * QUOTED_PRICE) AS TOTAL_AMOUNT FROM ORDER_LINE GROUP BY ORDER_NUM ORDER BY ORDERS.ORDER_NUM;



SELECT ORDER_NUM, SUM(NUM_ORDERED * QUOTED_PRICE) AS TOTAL_AMOUNT FROM ORDER_LINE GROUP BY ORDER_NUM HAVING SUM(NUM_ORDERED * QUOTED_PRICE) > 1000 ORDER BY ORDERS.ORDER_NUM;

























	