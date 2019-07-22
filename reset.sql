DROP DATABASE IF EXISTS PREMIERE;
DROP DATABASE IF EXISTS HENRY_BOOKS;
DROP DATABASE IF EXISTS ALEXAMARA_MARINA_GROUP;

CREATE DATABASE ALEXAMARA_MARINA_GROUP;

USE ALEXAMARA_MARINA_GROUP;

CREATE TABLE MARINA
(MARINA_NUM CHAR(4) PRIMARY KEY,
NAME CHAR(20),
ADDRESS CHAR(15),
CITY CHAR(15),
STATE CHAR(2),
ZIP CHAR(5) );
CREATE TABLE MARINA_SLIP
(SLIP_ID DECIMAL(4,0) PRIMARY KEY,
MARINA_NUM CHAR(4),
SLIP_NUM CHAR(4),
LENGTH DECIMAL(4,0),
RENTAL_FEE DECIMAL(8,2),
BOAT_NAME CHAR(50),
BOAT_TYPE CHAR(50),
OWNER_NUM CHAR(4) );
CREATE TABLE OWNER
(OWNER_NUM CHAR(4) PRIMARY KEY,
LAST_NAME CHAR(50),
FIRST_NAME CHAR(20),
ADDRESS CHAR(15),
CITY CHAR(15),
STATE CHAR(2),
ZIP CHAR(5) );
CREATE TABLE SERVICE_CATEGORY
(CATEGORY_NUM DECIMAL(4,0) PRIMARY KEY,
CATEGORY_DESCRIPTION CHAR(255) );
CREATE TABLE SERVICE_REQUEST
(SERVICE_ID DECIMAL(4,0) PRIMARY KEY,
SLIP_ID DECIMAL(4,0),
CATEGORY_NUM DECIMAL(4,0),
DESCRIPTION CHAR(255),
STATUS CHAR(255),
EST_HOURS DECIMAL(4,2),
SPENT_HOURS DECIMAL(4,2),
NEXT_SERVICE_DATE DATE );
INSERT INTO MARINA
VALUES
('1','Alexamara East','108 2nd Ave.','Brinman','FL','32273');
INSERT INTO MARINA
VALUES
('2','Alexamara Central','283 Branston','W. Brinman','FL','32274');
INSERT INTO MARINA_SLIP
VALUES
(1,'1','A1',40,3800.00,'Anderson II','Sprite 4000','AN75');
INSERT INTO MARINA_SLIP
VALUES
(2,'1','A2',40,3800.00,'Our Toy','Ray 4025','EL25');
INSERT INTO MARINA_SLIP
VALUES
(3,'1','A3',40,3600.00,'Escape','Sprite 4000','KE22');
INSERT INTO MARINA_SLIP
VALUES
(4,'1','B1',30,2400.00,'Gypsy','Dolphin 28','JU92');
INSERT INTO MARINA_SLIP
VALUES
(5,'1','B2',30,2600.00,'Anderson III','Sprite 3000','AN75');
INSERT INTO MARINA_SLIP
VALUES
(6,'2','1',25,1800.00,'Bravo','Dolphin 25','AD57');
INSERT INTO MARINA_SLIP
VALUES
(7,'2','2',25,1800.00,'Chinook','Dolphin 22','FE82');
INSERT INTO MARINA_SLIP
VALUES
(8,'2','3',25,2000.00,'Listy','Dolphin 25','SM72');
INSERT INTO MARINA_SLIP
VALUES
(9,'2','4',30,2500.00,'Mermaid','Dolphin 28','BL72');
INSERT INTO MARINA_SLIP
VALUES
(10,'2','5',40,4200.00,'Axxon II','Dolphin 40','NO27');
INSERT INTO MARINA_SLIP
VALUES
(11,'2','6',40,4200.00,'Karvel','Ray 4025','TR72');
INSERT INTO OWNER
VALUES
('AD57','Adney','Bruce and Jean','208 Citrus','Bowton','FL','31313');
INSERT INTO OWNER
VALUES
('AN75','Anderson','Bill','18 Wilcox','Glander Bay','FL','31044');
INSERT INTO OWNER
VALUES
('BL72','Blake','Mary','2672 Commodore','Bowton','FL','31313');
INSERT INTO OWNER
VALUES
('EL25','Elend','Sandy and Bill','462 Riverside','Rivard','FL','31062');
INSERT INTO OWNER
VALUES
('FE82','Feenstra','Daniel','7822 Coventry','Kaleva','FL','32521');
INSERT INTO OWNER
VALUES
('JU92','Juarez','Maria','8922 Oak','Rivard','FL','31062');
INSERT INTO OWNER
VALUES
('KE22','Kelly','Alyssa','5271 Waters','Bowton','FL','31313');
INSERT INTO OWNER
VALUES
('NO27','Norton','Peter','2811 Lakewood','Lewiston','FL','32765');
INSERT INTO OWNER
VALUES
('SM72','Smeltz','Becky and Dave','922 Garland','Glander Bay','FL','31044');
INSERT INTO OWNER
VALUES
('TR72','Trent','Ashton','922 Crest','Bay Shores','FL','30992');
INSERT INTO SERVICE_CATEGORY
VALUES
(1,'Routine engine maintenance');
INSERT INTO SERVICE_CATEGORY
VALUES
(2,'Engine repair');
INSERT INTO SERVICE_CATEGORY
VALUES
(3,'Air conditioning');
INSERT INTO SERVICE_CATEGORY
VALUES
(4,'Electrical systems');
INSERT INTO SERVICE_CATEGORY
VALUES
(5,'Fiberglass repair');
INSERT INTO SERVICE_CATEGORY
VALUES
(6,'Canvas installation');
INSERT INTO SERVICE_CATEGORY
VALUES
(7,'Canvas repair');
INSERT INTO SERVICE_CATEGORY
VALUES
(8,'Electronic systems (radar, GPS, autopilots, etc.)');
INSERT INTO SERVICE_REQUEST
VALUES
(1,1,3,'Air conditioner periodically stops with code indicating low coolant level. Diagnose and repair.','Technician has verified the problem. Air conditioning specialist has been called.','4','2','2007-07-12');
INSERT INTO SERVICE_REQUEST
VALUES
(2,5,4,'Fuse on port motor blown on two occasions. Diagnose and repair.','Open','2','0','2007-07-12');
INSERT INTO SERVICE_REQUEST
VALUES
(3,4,1,'Oil change and general routine maintenance (check fluid levels, clean sea strainers etc.).','Service call has been scheduled.','1','0','2007-07-16');
INSERT INTO SERVICE_REQUEST
VALUES
(4,1,2,'Engine oil level has been dropping drastically. Diagnose and repair.','Open','2','0','2007-07-13');
INSERT INTO SERVICE_REQUEST
VALUES
(5,3,5,'Open pockets at base of two stantions.','Technician has completed the initial filling of the open pockets. Will complete the job after the initial fill has had sufficient time to dry.','4','2','2007-07-13');
INSERT INTO SERVICE_REQUEST
VALUES
(6,11,4,'Electric-flush system periodically stops functioning. Diagnose and repair.','Open','3','0','2010-12-31');
INSERT INTO SERVICE_REQUEST
VALUES
(7,6,2,'Engine overheating. Loss of coolant. Diagnose and repair.','Open','2','0','2007-07-13');
INSERT INTO SERVICE_REQUEST
VALUES
(8,6,2,'Heat exchanger not operating correctly.','Technician has determined that the exchanger is faulty. New exchanger has been ordered.','4','1','2007-07-17');
INSERT INTO SERVICE_REQUEST
VALUES
(9,7,6,'Canvas severely damaged in windstorm. Order and install new canvas.','Open','8','0','2007-07-16');
INSERT INTO SERVICE_REQUEST
VALUES
(10,2,8,'Install new GPS and chart plotter.','Scheduled','7','0','2007-07-17');
INSERT INTO SERVICE_REQUEST
VALUES
(11,2,3,'Air conditioning unit shuts down with HHH showing on the control panel.','Technician not able to replicate the problem. Air conditioning unit ran fine through multiple tests. Owner to notify technician if the problem recurs.','1','1','2010-12-31');
INSERT INTO SERVICE_REQUEST
VALUES
(12,4,8,'Both speed and depth readings on data unit are significantly less than the owner thinks they should be.','Technician has scheduled appointment with owner to attempt to verify the problem.','2','0','2007-07-16');
INSERT INTO SERVICE_REQUEST
VALUES
(13,8,2,'Customer describes engine as making a clattering sound.','Technician suspects problem with either propeller or shaft and has scheduled the boat to be pulled from the water for further investigation.','5','2','2007-07-12');
INSERT INTO SERVICE_REQUEST
VALUES
(14,7,5,'Owner accident caused damage to forward portion of port side.','Technician has scheduled repair.','6','0','2007-07-13');
INSERT INTO SERVICE_REQUEST
VALUES
(15,11,7,'Canvas leaks around zippers in heavy rain. Install overlap around zippers to prevent leaks.','Overlap has been created. Installation has been scheduled.','8','3','2007-07-17');
UPDATE SERVICE_REQUEST
SET NEXT_SERVICE_DATE = Null
WHERE NEXT_SERVICE_DATE = '2010-12-31';

CREATE DATABASE HENRY_BOOKS;

USE HENRY_BOOKS;

CREATE TABLE AUTHOR 
(AUTHOR_NUM DECIMAL(2,0) PRIMARY KEY,
AUTHOR_LAST CHAR(12),
AUTHOR_FIRST CHAR(10) );
CREATE TABLE BOOK 
(BOOK_CODE CHAR(4) PRIMARY KEY,
TITLE CHAR(40),
PUBLISHER_CODE CHAR(3),
TYPE CHAR(3),
PRICE DECIMAL(4,2),
PAPERBACK CHAR(1) );
CREATE TABLE BRANCH 
(BRANCH_NUM DECIMAL(2,0) PRIMARY KEY,
BRANCH_NAME CHAR(50),
BRANCH_LOCATION CHAR(50),
NUM_EMPLOYEES DECIMAL(2,0) );
CREATE TABLE INVENTORY 
(BOOK_CODE CHAR(4),
BRANCH_NUM DECIMAL(2,0),
ON_HAND DECIMAL(2,0),
PRIMARY KEY (BOOK_CODE, BRANCH_NUM) );
CREATE TABLE PUBLISHER 
(PUBLISHER_CODE CHAR(3) PRIMARY KEY,
PUBLISHER_NAME CHAR(25),
CITY CHAR(20) );
CREATE TABLE WROTE 
(BOOK_CODE CHAR(4),
AUTHOR_NUM DECIMAL(2,0),
SEQUENCE DECIMAL(1,0),
PRIMARY KEY (BOOK_CODE, AUTHOR_NUM) );
INSERT INTO AUTHOR
VALUES
(1,'Morrison','Toni');
INSERT INTO AUTHOR
VALUES
(2,'Solotaroff','Paul');
INSERT INTO AUTHOR
VALUES
(3,'Vintage','Vernor');
INSERT INTO AUTHOR
VALUES
(4,'Francis','Dick');
INSERT INTO AUTHOR
VALUES
(5,'Straub','Peter');
INSERT INTO AUTHOR
VALUES
(6,'King','Stephen');
INSERT INTO AUTHOR
VALUES
(7,'Pratt','Philip');
INSERT INTO AUTHOR
VALUES
(8,'Chase','Truddi');
INSERT INTO AUTHOR
VALUES
(9,'Collins','Bradley');
INSERT INTO AUTHOR
VALUES
(10,'Heller','Joseph');
INSERT INTO AUTHOR
VALUES
(11,'Wills','Gary');
INSERT INTO AUTHOR
VALUES
(12,'Hofstadter','Douglas R.');
INSERT INTO AUTHOR
VALUES
(13,'Lee','Harper');
INSERT INTO AUTHOR
VALUES
(14,'Ambrose','Stephen E.');
INSERT INTO AUTHOR
VALUES
(15,'Rowling','J.K.');
INSERT INTO AUTHOR
VALUES
(16,'Salinger','J.D.');
INSERT INTO AUTHOR
VALUES
(17,'Heaney','Seamus');
INSERT INTO AUTHOR
VALUES
(18,'Camus','Albert');
INSERT INTO AUTHOR
VALUES
(19,'Collins, Jr.','Bradley');
INSERT INTO AUTHOR
VALUES
(20,'Steinbeck','John');
INSERT INTO AUTHOR
VALUES
(21,'Castelman','Riva');
INSERT INTO AUTHOR
VALUES
(22,'Owen','Barbara');
INSERT INTO AUTHOR
VALUES
(23,'O''Rourke','Randy');
INSERT INTO AUTHOR
VALUES
(24,'Kidder','Tracy');
INSERT INTO AUTHOR
VALUES
(25,'Schleining','Lon');
INSERT INTO BOOK
VALUES
('0180','A Deepness in the Sky','TB','SFI',7.19,'Y');
INSERT INTO BOOK
VALUES
('0189','Magic Terror','FA','HOR',7.99,'Y');
INSERT INTO BOOK
VALUES
('0200','The Stranger','VB','FIC',8.00,'Y');
INSERT INTO BOOK
VALUES
('0378','Venice','SS','ART',24.50,'N');
INSERT INTO BOOK
VALUES
('079X','Second Wind','PU','MYS',24.95,'N');
INSERT INTO BOOK
VALUES
('0808','The Edge','JP','MYS',6.99,'Y');
INSERT INTO BOOK
VALUES
('1351','Dreamcatcher: A Novel','SC','HOR',19.60,'N');
INSERT INTO BOOK
VALUES
('1382','Treasure Chests','TA','ART',24.46,'N');
INSERT INTO BOOK
VALUES
('138X','Beloved','PL','FIC',12.95,'Y');
INSERT INTO BOOK
VALUES
('2226','Harry Potter and the Prisoner of Azkaban','ST','SFI',13.96,'N');
INSERT INTO BOOK
VALUES
('2281','Van Gogh and Gauguin','WP','ART',21.00,'N');
INSERT INTO BOOK
VALUES
('2766','Of Mice and Men','PE','FIC',6.95,'Y');
INSERT INTO BOOK
VALUES
('2908','Electric Light','FS','POE',14.00,'N');
INSERT INTO BOOK
VALUES
('3350','Group: Six People in Search of a Life','BP','PSY',10.40,'Y');
INSERT INTO BOOK
VALUES
('3743','Nine Stories','LB','FIC',5.99,'Y');
INSERT INTO BOOK
VALUES
('3906','The Soul of a New Machine','BY','SCI',11.16,'Y');
INSERT INTO BOOK
VALUES
('5163','Travels with Charley','PE','TRA',7.95,'Y');
INSERT INTO BOOK
VALUES
('5790','Catch-22','SC','FIC',12.00,'Y');
INSERT INTO BOOK
VALUES
('6128','Jazz','PL','FIC',12.95,'Y');
INSERT INTO BOOK
VALUES
('6328','Band of Brothers','TO','HIS',9.60,'Y');
INSERT INTO BOOK
VALUES
('669X','A Guide to SQL','CT','CMP',37.95,'Y');
INSERT INTO BOOK
VALUES
('6908','Franny and Zooey','LB','FIC',5.99,'Y');
INSERT INTO BOOK
VALUES
('7405','East of Eden','PE','FIC',12.95,'Y');
INSERT INTO BOOK
VALUES
('7443','Harry Potter and the Goblet of Fire','ST','SFI',18.16,'N');
INSERT INTO BOOK
VALUES
('7559','The Fall','VB','FIC',8.00,'Y');
INSERT INTO BOOK
VALUES
('8092','Godel, Escher, Bach','BA','PHI',14.00,'Y');
INSERT INTO BOOK
VALUES
('8720','When Rabbit Howls','JP','PSY',6.29,'Y');
INSERT INTO BOOK
VALUES
('9611','Black House','RH','HOR',18.81,'N');
INSERT INTO BOOK
VALUES
('9627','Song of Solomon','PL','FIC',14.00,'Y');
INSERT INTO BOOK
VALUES
('9701','The Grapes of Wrath','PE','FIC',13.00,'Y');
INSERT INTO BOOK
VALUES
('9882','Slay Ride','JP','MYS',6.99,'Y');
INSERT INTO BOOK
VALUES
('9883','The Catcher in the Rye','LB','FIC',5.99,'Y');
INSERT INTO BOOK
VALUES
('9931','To Kill a Mockingbird','HC','FIC',18.00,'N');
INSERT INTO BRANCH
VALUES
(1,'Henry Downtown','16 Riverview',10);
INSERT INTO BRANCH
VALUES
(2,'Henry On The Hill','1289 Bedford',6);
INSERT INTO BRANCH
VALUES
(3,'Henry Brentwood','Brentwood Mall',15);
INSERT INTO BRANCH
VALUES
(4,'Henry Eastshore','Eastshore Mall',9);
INSERT INTO INVENTORY
VALUES
('0180',1,2);
INSERT INTO INVENTORY
VALUES
('0189',2,2);
INSERT INTO INVENTORY
VALUES
('0200',1,1);
INSERT INTO INVENTORY
VALUES
('0200',2,3);
INSERT INTO INVENTORY
VALUES
('0378',3,2);
INSERT INTO INVENTORY
VALUES
('079X',2,1);
INSERT INTO INVENTORY
VALUES
('079X',3,2);
INSERT INTO INVENTORY
VALUES
('079X',4,3);
INSERT INTO INVENTORY
VALUES
('0808',2,1);
INSERT INTO INVENTORY
VALUES
('1351',2,4);
INSERT INTO INVENTORY
VALUES
('1351',3,2);
INSERT INTO INVENTORY
VALUES
('1382',2,1);
INSERT INTO INVENTORY
VALUES
('138X',2,3);
INSERT INTO INVENTORY
VALUES
('2226',1,3);
INSERT INTO INVENTORY
VALUES
('2226',3,2);
INSERT INTO INVENTORY
VALUES
('2226',4,1);
INSERT INTO INVENTORY
VALUES
('2281',4,3);
INSERT INTO INVENTORY
VALUES
('2766',3,2);
INSERT INTO INVENTORY
VALUES
('2908',1,3);
INSERT INTO INVENTORY
VALUES
('2908',4,1);
INSERT INTO INVENTORY
VALUES
('3350',1,2);
INSERT INTO INVENTORY
VALUES
('3743',2,1);
INSERT INTO INVENTORY
VALUES
('3906',2,1);
INSERT INTO INVENTORY
VALUES
('3906',3,2);
INSERT INTO INVENTORY
VALUES
('5163',1,1);
INSERT INTO INVENTORY
VALUES
('5790',4,2);
INSERT INTO INVENTORY
VALUES
('6128',2,4);
INSERT INTO INVENTORY
VALUES
('6128',3,3);
INSERT INTO INVENTORY
VALUES
('6328',2,2);
INSERT INTO INVENTORY
VALUES
('669X',1,1);
INSERT INTO INVENTORY
VALUES
('6908',2,2);
INSERT INTO INVENTORY
VALUES
('7405',3,2);
INSERT INTO INVENTORY
VALUES
('7443',4,1);
INSERT INTO INVENTORY
VALUES
('7559',2,2);
INSERT INTO INVENTORY
VALUES
('8092',3,1);
INSERT INTO INVENTORY
VALUES
('8720',1,3);
INSERT INTO INVENTORY
VALUES
('9611',1,2);
INSERT INTO INVENTORY
VALUES
('9627',3,5);
INSERT INTO INVENTORY
VALUES
('9627',4,2);
INSERT INTO INVENTORY
VALUES
('9701',1,2);
INSERT INTO INVENTORY
VALUES
('9701',2,1);
INSERT INTO INVENTORY
VALUES
('9701',3,3);
INSERT INTO INVENTORY
VALUES
('9701',4,2);
INSERT INTO INVENTORY
VALUES
('9882',3,3);
INSERT INTO INVENTORY
VALUES
('9883',2,3);
INSERT INTO INVENTORY
VALUES
('9883',4,2);
INSERT INTO INVENTORY
VALUES
('9931',1,2);
INSERT INTO PUBLISHER
VALUES
('AH','Arkham House','Sauk City WI');
INSERT INTO PUBLISHER
VALUES
('AP','Arcade Publishing','New York');
INSERT INTO PUBLISHER
VALUES
('BA','Basic Books','Boulder CO');
INSERT INTO PUBLISHER
VALUES
('BP','Berkley Publishing','Boston');
INSERT INTO PUBLISHER
VALUES
('BY','Back Bay Books','New York');
INSERT INTO PUBLISHER
VALUES
('CT','Course Technology','Boston');
INSERT INTO PUBLISHER
VALUES
('FA','Fawcett Books','New York');
INSERT INTO PUBLISHER
VALUES
('FS','Farrar Straus and Giroux','New York');
INSERT INTO PUBLISHER
VALUES
('HC','HarperCollins Publishers','New York');
INSERT INTO PUBLISHER
VALUES
('JP','Jove Publications','New York');
INSERT INTO PUBLISHER
VALUES
('JT','Jeremy P. Tarcher','Los Angeles');
INSERT INTO PUBLISHER
VALUES
('LB','Lb Books','New York');
INSERT INTO PUBLISHER
VALUES
('MP','McPherson and Co.','Kingston');
INSERT INTO PUBLISHER
VALUES
('PE','Penguin USA','New York');
INSERT INTO PUBLISHER
VALUES
('PL','Plume','New York');
INSERT INTO PUBLISHER
VALUES
('PU','Putnam Publishing Group','New York');
INSERT INTO PUBLISHER
VALUES
('RH','Random House','New York');
INSERT INTO PUBLISHER
VALUES
('SB','Schoken Books','New York');
INSERT INTO PUBLISHER
VALUES
('SC','Scribner','New York');
INSERT INTO PUBLISHER
VALUES
('SS','Simon and Schuster','New York');
INSERT INTO PUBLISHER
VALUES
('ST','Scholastic Trade','New York');
INSERT INTO PUBLISHER
VALUES
('TA','Taunton Press','Newtown CT');
INSERT INTO PUBLISHER
VALUES
('TB','Tor Books','New York');
INSERT INTO PUBLISHER
VALUES
('TH','Thames and Hudson','New York');
INSERT INTO PUBLISHER
VALUES
('TO','Touchstone Books','Westport CT');
INSERT INTO PUBLISHER
VALUES
('VB','Vintage Books','New York');
INSERT INTO PUBLISHER
VALUES
('WN','W.W. Norton','New York');
INSERT INTO PUBLISHER
VALUES
('WP','Westview Press','Boulder CO');
INSERT INTO WROTE
VALUES
('0180',3,1);
INSERT INTO WROTE
VALUES
('0189',5,1);
INSERT INTO WROTE
VALUES
('0200',18,1);
INSERT INTO WROTE
VALUES
('0378',11,1);
INSERT INTO WROTE
VALUES
('079X',4,1);
INSERT INTO WROTE
VALUES
('0808',4,1);
INSERT INTO WROTE
VALUES
('1351',6,1);
INSERT INTO WROTE
VALUES
('1382',23,2);
INSERT INTO WROTE
VALUES
('1382',25,1);
INSERT INTO WROTE
VALUES
('138X',1,1);
INSERT INTO WROTE
VALUES
('2226',15,1);
INSERT INTO WROTE
VALUES
('2281',9,2);
INSERT INTO WROTE
VALUES
('2281',19,1);
INSERT INTO WROTE
VALUES
('2766',20,1);
INSERT INTO WROTE
VALUES
('2908',17,1);
INSERT INTO WROTE
VALUES
('3350',2,1);
INSERT INTO WROTE
VALUES
('3743',16,1);
INSERT INTO WROTE
VALUES
('3906',24,1);
INSERT INTO WROTE
VALUES
('5163',20,1);
INSERT INTO WROTE
VALUES
('5790',10,1);
INSERT INTO WROTE
VALUES
('6128',1,1);
INSERT INTO WROTE
VALUES
('6328',14,1);
INSERT INTO WROTE
VALUES
('669X',7,1);
INSERT INTO WROTE
VALUES
('6908',16,1);
INSERT INTO WROTE
VALUES
('7405',20,1);
INSERT INTO WROTE
VALUES
('7443',15,1);
INSERT INTO WROTE
VALUES
('7559',18,1);
INSERT INTO WROTE
VALUES
('8092',12,1);
INSERT INTO WROTE
VALUES
('8720',8,1);
INSERT INTO WROTE
VALUES
('9611',5,2);
INSERT INTO WROTE
VALUES
('9611',6,1);
INSERT INTO WROTE
VALUES
('9627',1,1);
INSERT INTO WROTE
VALUES
('9701',20,1);
INSERT INTO WROTE
VALUES
('9882',4,1);
INSERT INTO WROTE
VALUES
('9883',16,1);
INSERT INTO WROTE
VALUES
('9931',13,1);

CREATE DATABASE PREMIERE;

USE PREMIERE;

CREATE TABLE REP
(REP_NUM CHAR(2) PRIMARY KEY,
LAST_NAME CHAR(15),
FIRST_NAME CHAR(15),
STREET CHAR(15),
CITY CHAR(15),
STATE CHAR(2),
ZIP CHAR(5),
COMMISSION DECIMAL(7,2),
RATE DECIMAL(3,2) );
CREATE TABLE CUSTOMER
(CUSTOMER_NUM CHAR(3) PRIMARY KEY,
CUSTOMER_NAME CHAR(35) NOT NULL,
STREET CHAR(15),
CITY CHAR(15),
STATE CHAR(2),
ZIP CHAR(5),
BALANCE DECIMAL(8,2),
CREDIT_LIMIT DECIMAL(8,2),
REP_NUM CHAR(2) );
CREATE TABLE ORDERS
(ORDER_NUM CHAR(5) PRIMARY KEY,
ORDER_DATE DATE,
CUSTOMER_NUM CHAR(3) );
CREATE TABLE PART
(PART_NUM CHAR(4) PRIMARY KEY,
DESCRIPTION CHAR(15),
ON_HAND DECIMAL(4,0),
CLASS CHAR(2),
WAREHOUSE CHAR(1),
PRICE DECIMAL(6,2) );
CREATE TABLE ORDER_LINE
(ORDER_NUM CHAR(5),
PART_NUM CHAR(4),
NUM_ORDERED DECIMAL(3,0),
QUOTED_PRICE DECIMAL(6,2),
PRIMARY KEY (ORDER_NUM, PART_NUM) );
INSERT INTO REP
VALUES
('20','Kaiser','Valerie','624 Randall','Grove','FL','33321',20542.50,0.05);
INSERT INTO REP
VALUES
('35','Hull','Richard','532 Jackson','Sheldon','FL','33553',39216.00,0.07);
INSERT INTO REP
VALUES
('65','Perez','Juan','1626 Taylor','Fillmore','FL','33336',23487.00,0.05);
INSERT INTO CUSTOMER
VALUES
('148','Al''s Appliance and Sport','2837 Greenway','Fillmore','FL','33336',6550.00,7500.00,'20');
INSERT INTO CUSTOMER
VALUES
('282','Brookings Direct','3827 Devon','Grove','FL','33321',431.50,10000.00,'35');
INSERT INTO CUSTOMER
VALUES
('356','Ferguson''s','382 Wildwood','Northfield','FL','33146',5785.00,7500.00,'65');
INSERT INTO CUSTOMER
VALUES
('408','The Everything Shop','1828 Raven','Crystal','FL','33503',5285.25,5000.00,'35');
INSERT INTO CUSTOMER
VALUES
('462','Bargains Galore','3829 Central','Grove','FL','33321',3412.00,10000.00,'65');
INSERT INTO CUSTOMER
VALUES
('524','Kline''s','838 Ridgeland','Fillmore','FL','33336',12762.00,15000.00,'20');
INSERT INTO CUSTOMER
VALUES
('608','Johnson''s Department Store','372 Oxford','Sheldon','FL','33553',2106.00,10000.00,'65');
INSERT INTO CUSTOMER
VALUES
('687','Lee''s Sport and Appliance','282 Evergreen','Altonville','FL','32543',2851.00,5000.00,'35');
INSERT INTO CUSTOMER
VALUES
('725','Deerfield''s Four Seasons','282 Columbia','Sheldon','FL','33553',248.00,7500.00,'35');
INSERT INTO CUSTOMER
VALUES
('842','All Season','28 Lakeview','Grove','FL','33321',8221.00,7500.00,'20');
INSERT INTO ORDERS
VALUES
('21608','2007-10-20','148');
INSERT INTO ORDERS
VALUES
('21610','2007-10-20','356');
INSERT INTO ORDERS
VALUES
('21613','2007-10-21','408');
INSERT INTO ORDERS
VALUES
('21614','2007-10-21','282');
INSERT INTO ORDERS
VALUES
('21617','2007-10-23','608');
INSERT INTO ORDERS
VALUES
('21619','2007-10-23','148');
INSERT INTO ORDERS
VALUES
('21623','2007-10-23','608');
INSERT INTO PART
VALUES
('AT94','Iron',50,'HW','3',24.95);
INSERT INTO PART
VALUES
('BV06','Home Gym',45,'SG','2',794.95);
INSERT INTO PART
VALUES
('CD52','Microwave Oven',32,'AP','1',165.00);
INSERT INTO PART
VALUES
('DL71','Cordless Drill',21,'HW','3',129.95);
INSERT INTO PART
VALUES
('DR93','Gas Range',8,'AP','2',495.00);
INSERT INTO PART
VALUES
('DW11','Washer',12,'AP','3',399.99);
INSERT INTO PART
VALUES
('FD21','Stand Mixer',22,'HW','3',159.95);
INSERT INTO PART
VALUES
('KL62','Dryer',12,'AP','1',349.95);
INSERT INTO PART
VALUES
('KT03','Dishwasher',8,'AP','3',595.00);
INSERT INTO PART
VALUES
('KV29','Treadmill',9,'SG','2',1390.00);
INSERT INTO ORDER_LINE
VALUES
('21608','AT94',11,21.95);
INSERT INTO ORDER_LINE
VALUES
('21610','DR93',1,495.00);
INSERT INTO ORDER_LINE
VALUES
('21610','DW11',1,399.99);
INSERT INTO ORDER_LINE
VALUES
('21613','KL62',4,329.95);
INSERT INTO ORDER_LINE
VALUES
('21614','KT03',2,595.00);
INSERT INTO ORDER_LINE
VALUES
('21617','BV06',2,794.95);
INSERT INTO ORDER_LINE
VALUES
('21617','CD52',4,150.00);
INSERT INTO ORDER_LINE
VALUES
('21619','DR93',1,495.00);
INSERT INTO ORDER_LINE
VALUES
('21623','KV29',2,1290.00);