CREATE DATABASE Automobile_showroom;
USE Automobile_showroom;


#Table-1
CREATE TABLE CUSTOMER(
CUST_ID int primary key,              #PK
CUST_NAME VARCHAR(20) not null,
CUST_NUM bigint not null,
CUST_GENDER varchar(50) not null,
CUST_PASSWORD varchar(50) not null,
CUST_ADDRESS varchar(50) not null,
CUST_MAIL_ID VARCHAR(20) default "XYZ@GMAIL.COM",
CUST_LAST_LOGIN date,
CUST_STATUS VARCHAR(20));

#table-2
CREATE TABLE SHOWROOM(
SHOW_ID int primary key,              #pK  
CUST_ID int ,                         #FK
SHOW_NAME VARCHAR(20) not null,
SHOW_ADDRESS VARCHAR(60),
CUST_NUM bigint,
SHOW_STATUS VARCHAR(20));


#Table-3
CREATE TABLE DEALER(
D_ID int primary key,                  #PK
SHOW_ID int not null,                  #FK    
CMPNY_NAME VARCHAR(20) not null,
D_USERNAME VARCHAR(20) not null,
D_PASSWORD varchar(20) not null,
D_ADDRESS VARCHAR(20),
D_LAST_LOGIN date,
D_STATUS varchar(50));

#table-4
CREATE TABLE VEHICLE(
V_ID int primary key,                  #PK
D_ID int not null,                     #FK             
V_NAME VARCHAR(20) not null,
V_MODEL VARCHAR(20) not null,
V_TYPE VARCHAR(20) not null,
V_DESC VARCHAR(20),
V_COST bigint not null,
V_DATE date,
V_STATUS varchar(50));

#Table-5
CREATE TABLE SALES(
SAL_ID int primary key,             #PK
V_ID int not null,                  #FK             
ORD_DAT date,
DEL_DAT date,
SAL_DESC VARCHAR(20),
SAL_STATUS varchar(50));
 
 
#table-6
CREATE TABLE TAX(
TAX_ID int primary key,            #PK
SAL_ID int not null,               #FK
TAX_DESC VARCHAR(20) not null,
TAX_NUM bigint not null,
TAX_STATUS VARCHAR(20));
  


INSERT INTO CUSTOMER VALUES
(1,'srikanth',510245,'m',0001,'maha','','2016-4-25','ready'),
(2,'sriram',510255,'m',0002,'banglore','','2016-7-22','ready'),
(3,'maha',520255,'f',0003,'bellary','','2015-10-22','not ready'),
(4,'raja',520235,'m',0004,'mysore','','2016-11-02','ready'),
(5,'rani',520222,'f',0005,'hyd','','2011-4-02','not ready'),
(6,'siraj',57860762,'m',0006,'mum','','2022-5-23','ready'),
(7,'shami',56547457,'m',0007,'bengal','','2021-5-9','not ready'),
(8,'rohit',54757535,'m',0008,'delhi','','2023-4-12','not ready'),
(9,'ishan',59857870,'m',0009,'up','','2021-7-23','ready'),
(10,'kane',58229099,'m',00010,'chennai','','2020-9-19','ready'),
(11,'gill',52059739,'m',00020,'mp','','2023-11-14','ready'),
(12,'virat',5525899,'m',00030,'jaipaur','','2019-10-9','not ready'),
(13,'dhoni',5218399,'m',00040,'guj','','2018-12-30','ready'),
(14,'mohini',53287983,'f',00050,'haryana','','2019-4-25','ready'),
(15,'shradda',53508768,'f',00060,'tamilnadu','','2021-8-29','not ready');

INSERT INTO SHOWROOM VALUES
(001,1,'guru','banglore',258741,'instock'),
(002,2,'gayatri motors','mum',258111,'instock'),
(003,3,'laxmi motors','guj',257851,'out of stock'),
(004,4,'kk motors','kerla',257415,'instock'),
(005,5,'down motors','tamilnadu',257415,'instock'),
(006,6,'rj motors','mp',26346536,'out of stock'),
(007,7,'rr motors','up',238562875,'instock'),
(008,8,'pj motors','maha',5789436,'out of stock'),
(009,9,'shah motors','guj',5673465778,'instock'),
(0010,10,'kailas motors','navimum',5873678398,'instock'),
(0011,11,'raj motors','karnataka',53867376927,'out of stock'),
(0012,12,'svj motors','kerla',8973967897,'instock'),
(0013,13,'demon motors','navimum',6389769373,'out of stock'),
(0014,14,'amit motors','mp',8349768376,'instock'),
(0015,15,'raju motors','mp',078976387698,'out of stock');

INSERT INTO DEALER VALUES
(101,001,'bajaj','bajaj','636','banglore','2016-3-10','selling'),
(102,002,'honda','honda','3636','bellary','2016-6-11','not selling'),
(103,003,'yamaha','yamaha','4744','mysore','2015-9-15','not selling'),
(104,004,'hero','hero','8576g','maha','2017-3-15','selling'),
(105,005,'bullet','bullet','63g','kerla','2017-7-11','selling'),
(106,006,'tvs','tvs','3254m','mum','2015-6-2','not selling'),
(107,007,'bajaj','bajaj','6434g','guj','2021-3-23','selling'),
(108,008,'yamaha','yamaha','654g','tamilnadu','2019-9-29','not selling'),
(109,009,'royal enfield','royal enfield','3463h','haryana','2019-5-30','selling'),
(110,0010,'ktm','ktm','54646g','mum','2018-3-12','selling'),
(111,0011,'tata','tata','54534g','guj','2020-10-31','selling'),
(112,0012,'hero','hero','4543g','navi mum','2017-7-27','not selling'),
(113,0013,'tvs','tvs','4462g','mp','2021-9-29','selling'),
(114,0014,'bmw','bmw','57343g','up','2022-6-24','not selling'),
(115,0015,'bmw','bmw','63743g','maha','2022-8-28','selling');


INSERT INTO VEHICLE VALUES
(201,101,'hero honda','H456','bike','good',45000,'2016-6-10','available'),
(202,102,'bajaj','P4569','bike','good',85000,'2015-4-11','available'),
(203,103,'rx','R123','bike','good',70000,'2015-8-11','sold out'),
(204,104,'audi','A417','car','good',805000,'2016-2-11','available'),
(205,105,'benz','P4569','bike','good',155000,'2016-4-22','sold out'),
(206,106,'bmw','A49','car','good',457266,'2019-9-21','available'),
(207,107,'audi','U49','car','needs service',636030,'2019-8-28','available'),
(208,108,'benz','J94','car','good',3467694,'2020-12-6','available'),
(209,109,'tata','h33','car','good',523565,'2021-8-22','sold out'),
(210,110,'kia','ho39','car','good',4867299,'2020-9-4','sold out'),
(211,111,'bmw','s1000rr','bike','good',2000000,'2022-7-27','available'),
(212,112,'ninja','zx10r','bike','good',1500000,'2023-10-21','sold out'),
(213,113,'suzuki','wagonr','car','good',623000,'2023-8-31','available'),
(214,114,'bmw','m4','car','good',12000000,'2023-11-6','available'),
(215,115,'bmw','m8','car','good',25375700,'2023-12-17','sold out');

INSERT INTO SALES VALUES
(301,201,'2016-8-15','2016-8-16','high','super'),
(302,202,'2016-4-16','2016-4-18','high','medium'),
(303,203,'2016-3-19','2016-3-20','high','average'),
(304,204,'2016-6-20','2016-6-21','good','super'),
(305,205,'2016-7-15','2016-7-16','good','medium'),
(306,206,'2019-9-24','2019-9-26','high','medium'),
(307,207,'2020-9-24','2020-9-26','good','great'),
(308,208,'2022-5-19','2022-5-24','high','average'),
(309,209,'2021-6-20','2021-6-28','good','super'),
(310,210,'2023-8-22','2023-8-29','good','high'),
(311,211,'2022-9-7','2022-9-16','high','medium'),
(312,212,'2021-10-12','2021-10-20','good','high'),
(313,213,'2023-4-14','2023-5-6','high','super'),
(314,214,'2020-7-12','2020-7-17','good','medium'),
(315,215,'2021-9-21','2021-9-28','high','super');

INSERT INTO TAX VALUES
(1000,301,'all tax',54223,'pending'),
(2000,302,'road tax',50300,'clear'),
(3000,303,'all tax',54203,'pending'),
(4000,304,'insurance tax',48562,'clear'),
(5000,305,'imoprt tax',47295,'pending'),
(6000,306,'all tax',83947,'clear'),
(7000,307,'road tax',73950,'pending'),
(8000,308,'all tax',73954,'clear'),
(9000,309,'import tax',48574,'pending'),
(10000,310,'insurance tax',73849,'clear'),
(11000,311,'all tax',83847,'pending'),
(12000,312,'import tax',82930,'clear'),
(13000,313,'road tax',83020,'pending'),
(14000,314,'import tax',90283,'clear'),
(15000,315,'all tax',89044,'pending'); 


DESC CUSTOMER;
DESC SHOWROOM;
DESC DEALER;
DESC VEHICLE;
DESC SALES;
DESC TAX;

SELECT * FROM CUSTOMER;
SELECT * FROM SHOWROOM;
SELECT * FROM DEALER;
SELECT * FROM VEHICLE;
SELECT * FROM SALES;
SELECT * FROM TAX;


###subqueries 
#query1
#display name,id,date,status and type of vehicle which is having the highest cost
select max(V_COST) from vehicle;
select v_id,v_name,v_date,v_type,v_status,v_cost from vehicle where v_cost=(select max(V_COST) from vehicle);


#query-2
#querydisplay address,number,gender of customer whos status is not ready
select cust_status from customer where cust_status!="ready";
select cust_status,cust_name,cust_address,cust_gender from customer where cust_status in (select cust_status from customer where cust_status!="ready");

#query-3
#display all details of dealer who is having the minimum login date in the range of id 105 to 115.
select min(d_last_login) from dealer where d_id>=105 and d_id<=115;
select * from dealer where d_last_login=(select min(d_last_login) from dealer where d_id>=105 and d_id<=115);

#query-4
#display top 5 id and tax_status having tax_desc as "all tax"
select tax_desc from tax where tax_desc="all tax";
select count(tax_id),tax_status,tax_desc from tax where tax_desc in (select tax_desc from tax where tax_desc="all tax") group by tax_id limit 5;

#query-5
#display all details where address navimum or mp is neglected from showroom
select show_address from showroom where show_address!="navimum" or "mp";
select show_address,show_name,show_status from showroom where show_address in (select show_address from showroom where show_address!="navimum" or "mp");

###joins query
#query-1
#diplay all the customer name,gender,address and the show status having customer id less or equal to 10.
select cust_name,cust_gender,cust_address,show_status from customer left join showroom on customer.cust_id=showroom.cust_id where customer.cust_id<=10;


#query-2
#display the top 10 customer_name,cust_address and status of the sale.
select V_name,V_model,V_type,V_cost,sal_status from vehicle inner join sales on vehicle.v_id=sales.v_id limit 10;

#query-3
#diplay all the details of the rows where ord_dat,tax_desc,tax_num whose tax status are pending 
select ord_dat,tax_desc,tax_num from sales right join tax on sales.sal_id=tax.sal_id where tax.tax_status="pending";