--oracle live
REM   Script: FinalDraftCoursework 


REM   ecs519u 


CREATE TABLE agency(   
   A_Id          INTEGER  NOT NULL PRIMARY KEY    
  ,A_Name        VARCHAR(15) NOT NULL   
  ,A_PhoneNumber VARCHAR(12) NOT NULL   
);

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (1,'ABC Real Estate','555-545-1212');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (2,'XYZ Realty','235-555-1313');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (3,'DBE Real','100-555-8910');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (4,'FGH Real Estate','213-465-1200');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (5,'IJK Real','705-535-1600');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (6,'AAN Realty','101-421-1300');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (7,'AHJ Real','905-678-2456');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (8,'AGF Real','123-345-1210');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (9,'SDF Real Estate','400-123-1290');

INSERT INTO agency(A_Id,A_Name,A_PhoneNumber) VALUES (10,'REG Real','679-100-4090');

CREATE TABLE office(   
   O_Id        INTEGER  NOT NULL PRIMARY KEY    
  ,A_Id Number NOT NULL   
  ,Area        VARCHAR(1) NOT NULL   
  ,District    INTEGER  NOT NULL   
  ,Sector      INTEGER  NOT NULL   
  ,Unit        VARCHAR(2) NOT NULL   
  ,PhoneNumber VARCHAR(12) NOT NULL  
  ,PostCode  VARCHAR(12) ,  
  CONSTRAINT fk_office_A_Id FOREIGN KEY (A_Id) REFERENCES agency (A_Id)   
);

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (1,1,'E',1,4,'NS','531-322-1414');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (2,3,'E',1,4,'NW','585-673-1515');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (3,2,'W',1,1,'SW','941-312-1616');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (4,5,'S',3,2,'SE','059-245-5252');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (5,9,'E',5,3,'NW','701-322-1451');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (6,4,'W',2,5,'SW','333-269-2196');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (7,8,'E',1,6,'SW','123-689-1010');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (8,10,'S',4,3,'NW','478-900-1089');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (9,7,'W',3,2,'SW','567-908-1000');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (10,6,'E',2,1,'SE','700-981-4089');

INSERT INTO office(O_Id,A_Id,Area,District,Sector,Unit,PhoneNumber) VALUES (11,6,'W',1,4,'SE','600-111-5099');

UPDATE office  
SET PostCode =  area || district ||' ' || sector || unit;

CREATE TABLE property(  
   P_Id        INTEGER  NOT NULL PRIMARY KEY   
  ,Area        VARCHAR(10) NOT NULL  
  ,District    INTEGER  NOT NULL  
  ,Sector      INTEGER  NOT NULL  
  ,Unit        VARCHAR(10) NOT NULL  
  ,PostCode  VARCHAR(12)  
  ,City        VARCHAR(20) NOT NULL  
  ,Price       INTEGER NOT NULL  
  ,Type        VARCHAR(20) NOT NULL  
  ,NumBedrooms INTEGER  NOT NULL  
  ,Description VARCHAR(30) NOT NULL  
);

UPDATE property  
SET PostCode =  area || district ||' ' || sector || unit;

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (1,'E',1,4,'NS','LON','290','house',3,'three-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (2,'E',14,4,'NW','LON','250','flat',2,'two-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (3,'W',3,1,'SW','LON','490','house',4,'Four-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (4,'W',3,2,'SW','LON','350','flat',3,'three-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (5,'S',3,4,'NS','LON','270','house',3,'three-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (6,'E',7,4,'NE','LON','250','flat',2,'two-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (7,'S',2,1,'SW','LON','530','house',4,'Four-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (8,'W',1,1,'SE','LON','100','studio',1,'one-bedroom studio');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (9,'E',3,3,'NW','LON','180','flat',2,'two-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (10,'N',1,2,'NW','LON','140','studio',1,'one-bedroom studio');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (11,'W',14,3,'SE','LON','200','house',1,'one-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (12,'E',1,3,'SE','LON','500','house',3,'three-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (13,'E',3,2,'SW','LON','270','house',2,'two-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (14,'N',16,1,'SW','LON','195','flat',1,'one-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (15,'W',1,5,'NW','LON','340','flat',3,'three-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (16,'S',3,1,'NE','LON','500','house',4,'four-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (17,'S',3,6,'NW','LON','950','house',5,'five-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (18,'W',16,1,'SE','LON','120','studio',1,'one-bedroom studio');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (19,'E',14,5,'NE','LON','300','house',3,'three-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (20,'E',1,4,'SW','LON','700','flat',4,'four-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (21,'E',1,1,'NS','LON','350','house',3,'three-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (22,'E',16,2,'NE','LON','220','studio',2,'two-bedroom-studio');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (23,'E',14,5,'NW','LON','560','house',4,'four-bedroom-house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (24,'W',1,5,'SW','LON','120','flat',1,'one-bedroom-flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (25,'W',2,1,'SE','LON','470','flat',4,'four-bedroom flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (26,'S',14,2,'SW','LON','700','house',5,'five-bedroom house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (27,'N',1,3,'NW','LON','230','studio',1,'one-bedroom studio');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (28,'E',14,4,'NE','LON','600','flat',3,'three-bedroom-flat');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (29,'E',16,5,'SE','LON','170','house',1,'one-bedroom-house');

INSERT INTO property(P_Id,Area,District,Sector,Unit,City,Price,Type,NumBedrooms,Description) VALUES (30,'S',3,1,'NW','LON','210','flat',2,'two-bedroom-flat');

CREATE TABLE person (  
  SSN Number PRIMARY KEY,  
  Name VARCHAR(20) NOT NULL,  
  PhoneNumber VARCHAR(20) NOT NULL  
);

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1001,'Stafford Peta','333-219-8901');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1002,'Hayley Celtis','339-480-4801');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1003,'Eli Diamond','020-901-899');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1004,'Tilda Farley','070-201-9801');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1005,'Titus Maverick','890-431-7711');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1006,'Topaz Darren','972-090-8007');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1007,'Jefferson Carl','111-289-2780');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1008,'Sage Regana','321-907-1089');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1009,'Colt Addy','114-121-1456');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1010,'Herb Rolo','175-101-4001');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1011,'John Smith','712-451-1717');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1012,'Jane Doe','096-151-1818');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1013,'James Larry','962-123-1331');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1014,'Harry Mcguire','269-441-0292');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1015,'Jessica Kim','451-552-0164');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1016,'Alex West','872-781-5317');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1017,'Desmon Johnson','012-214-6274');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1018,'Laura Cane','710-251-8527');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1019,'Sam Elis','312-126-7437');

INSERT INTO person(SSN,Name,PhoneNumber) VALUES (1020,'Tony Jackson','393-262-9841');

CREATE TABLE employee (  
  E_Id Number PRIMARY KEY,  
  O_Id Number NOT NULL,  
  SSN Number NOT NULL,  
  Name VARCHAR(20) NOT NULL,  
  PhoneNumber VARCHAR(20) NOT NULL,  
  HIREDATE DATE,  
  SAL NUMBER,  
  COMM NUMBER,  
  JOB VARCHAR2(20),  
  MGR NUMBER,  
  CONSTRAINT fk_tbl5_tbl6   
  FOREIGN KEY (SSN) REFERENCES person (SSN) ,  
  CONSTRAINT fk_employee_O_Id FOREIGN KEY (O_Id) REFERENCES office (O_Id)  
);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (1,'Stafford Peta',1001,1,'333-219-8901',TO_DATE('17-DEC-1980', 'DD-MON-YYYY'),5000,NULL,'President',NULL);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (2,'Hayley Celtis',1002,4,'339-480-4801',TO_DATE('21-MAY-1991', 'DD-MON-YYYY'),2975,300,'Manager',1);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (3,'Eli Diamond',1003,7,'020-901-899',TO_DATE('10-APR-1985', 'DD-MON-YYYY'),2500,200,'Manager',1);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (4,'Tilda Farley',1004,2,'070-201-9801',TO_DATE('17-OCT-1992', 'DD-MON-YYYY'),1000,NULL,'Clerk',2);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (5,'Titus Maverick',1005,3,'890-431-7711',TO_DATE('12-DEC-1991', 'DD-MON-YYYY'),1800,100,'Estate Agent',3);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (6,'Topaz Darren',1006,9,'972-090-8007',TO_DATE('22-MAR-1993', 'DD-MON-YYYY'),1750,100,'Estate Agent',3);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (7,'Jefferson Carl',1007,6,'111-289-2780',TO_DATE('17-MAR-1998', 'DD-MON-YYYY'),1100,NULL,'Analyst',3);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (8,'Sage Regana',1008,10,'321-907-1089',TO_DATE('22-NOV-1995', 'DD-MON-YYYY'),1200,500,'Analyst',3);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (9,'Colt Addy',1009,8,'114-121-1456',TO_DATE('22-NOV-1994', 'DD-MON-YYYY'),800,NULL,'Salesman',2);

INSERT INTO employee(E_Id,Name,SSN,O_Id,PhoneNumber,HIREDATE,SAL,COMM,JOB,MGR) VALUES (10,'Herb Rolo',1010,5,'175-101-4001',TO_DATE('27-DEC-1993', 'DD-MON-YYYY'),800, NULL,'Salesman',2);

CREATE TABLE customer (  
  C_Id Number PRIMARY KEY,  
  SSN Number NOT NULL,  
  Name VARCHAR(20) NOT NULL,  
  PhoneNumber VARCHAR(20) NOT NULL,  
  CONSTRAINT fk_Customer_SSN FOREIGN KEY (SSN) REFERENCES person (SSN)   
);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (1,'John Smith','712-451-1717',1011);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (2,'Jane Doe','096-151-1818',1012);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (3,'James Larry','962-123-1331',1013);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (4,'Harry Mcguire','269-441-0292',1014);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (5,'Jessica Kim','451-552-0164',1015);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (6,'Alex West','872-781-5317',1016);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (7,'Desmon Johnson','012-214-6274',1017);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (8,'Laura Cane','710-251-8527',1018);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (9,'Sam Elis','312-126-7437',1019);

INSERT INTO customer(C_Id,Name,PhoneNumber,SSN) VALUES (10,'Tony Jackson','393-262-9841',1020);

CREATE TABLE sold (  
  P_Id NUMBER PRIMARY KEY,  
  O_Id NUMBER NOT NULL,  
  C_Id NUMBER NOT NULL,  
  CONSTRAINT fk_P_Id FOREIGN KEY (P_Id) REFERENCES property (P_Id),  
  CONSTRAINT fk_O_Id FOREIGN KEY (O_Id) REFERENCES office (O_Id),  
  CONSTRAINT fk_C_Id FOREIGN KEY (C_Id) REFERENCES customer (C_Id)  
);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (21,1,1);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (22,3,2);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (23,2,4);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (24,4,7);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (25,5,5);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (26,7,8);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (27,6,6);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (28,8,3);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (29,10,9);

INSERT INTO sold(P_Id,O_Id,C_Id) VALUES (30,9,10);

CREATE TABLE forSale (  
  P_Id Number NOT NULL,  
  O_Id Number NOT NULL,  
  CONSTRAINT forSale_fk_P_Id FOREIGN KEY (P_Id) REFERENCES property (P_Id),  
  CONSTRAINT forSale_fk_O_Id FOREIGN KEY (O_Id) REFERENCES office (O_Id)  
);

INSERT INTO forSale(P_Id,O_Id) VALUES (1,1);

INSERT INTO forSale(P_Id,O_Id) VALUES (2,6);

INSERT INTO forSale(P_Id,O_Id) VALUES (3,4);

INSERT INTO forSale(P_Id,O_Id) VALUES (4,10);

INSERT INTO forSale(P_Id,O_Id) VALUES (5,5);

INSERT INTO forSale(P_Id,O_Id) VALUES (6,3);

INSERT INTO forSale(P_Id,O_Id) VALUES (7,2);

INSERT INTO forSale(P_Id,O_Id) VALUES (8,9);

INSERT INTO forSale(P_Id,O_Id) VALUES (9,8);

INSERT INTO forSale(P_Id,O_Id) VALUES (10,7);

CREATE TABLE forRent (  
  P_Id Number NOT NULL,  
  O_Id Number NOT NULL,  
  CONSTRAINT forRent_fk_P_Id FOREIGN KEY (P_Id) REFERENCES property (P_Id),  
  CONSTRAINT forRent_k_O_Id FOREIGN KEY (O_Id) REFERENCES office (O_Id)  
);

INSERT INTO forRent(P_Id,O_Id) VALUES (11,2);

INSERT INTO forRent(P_Id,O_Id) VALUES (12,3);

INSERT INTO forRent(P_Id,O_Id) VALUES (13,4);

INSERT INTO forRent(P_Id,O_Id) VALUES (14,9);

INSERT INTO forRent(P_Id,O_Id) VALUES (15,6);

INSERT INTO forRent(P_Id,O_Id) VALUES (16,5);

INSERT INTO forRent(P_Id,O_Id) VALUES (17,2);

INSERT INTO forRent(P_Id,O_Id) VALUES (18,8);

INSERT INTO forRent(P_Id,O_Id) VALUES (19,7);

INSERT INTO forRent(P_Id,O_Id) VALUES (20,10);

Alter table forrent 
ADD primary KEY(P_Id, O_Id);

--Shows all the employees ion descending hire date whose manager is the employee id of 3
SELECT NAME, JOB, TO_CHAR ( HIREDATE, ' MM/DD/YY ' ) HIREDATE   
FROM employee   
WHERE mgr = 3   
order by HIREDATE DESC;

--Shows all properties which cost more than 300 and hace 2 or more bedrooms ordered by price
SELECT P_ID, TYPE, NUMBEDROOMS, POSTCODE, PRICE  
FROM PROPERTY  
WHERE PRICE < 300 AND NUMBEDROOMS >= 2  
ORDER BY PRICE;

--Shows number of properties within the area W10 which have an average price of more than 200 group
SELECT TYPE, COUNT(P_ID)  
FROM PROPERTY  
WHERE AREA LIKE 'W' AND DISTRICT <= 10  
GROUP BY TYPE  
HAVING AVG(price)>200;

--shows employees name date and salary that were hired between the dates 01-jan-90 and 01-jan-96 ordered by salary
SELECT NAME, O_ID, TO_CHAR ( HIREDATE, ' MM/DD/YY ' ) HIREDATE ,SAL FROM EMPLOYEE  
WHERE HIREDATE BETWEEN '01-JAN-90'  
AND '01-JAN-96'  
ORDER BY SAL;

--Shows all employees who earn more than titus maverick
SELECT X.NAME, X.SAL, X.JOB  
FROM employee X, employee Y  
WHERE X.SAL > Y.SAL  
AND Y.Name = 'Titus Maverick';

--display all employees and their managers
SELECT e.name, e.e_ID, m.name as manager, e.mgr  
FROM  
employee e  
LEFT OUTER JOIN employee m  
ON e.mgr = m.e_ID  
order by e.sal DESC;

--Shows all details of properties that were sold
select *  
from property  
where P_Id = ANY (  
select p.P_Id  
from property p   
right outer join sold s  
on s.P_Id = p.P_Id  
group by p.P_Id  
);

--shows agency names and the number of people working in offices under that agency
select a.a_name, o.o_id, count(e.e_id) as numOfEmployees 
from agency a  
Left outer join office o on a.a_id = o.a_id 
LEFT outer join employee e on o.o_Id = e.o_id 
group by a.a_name, o.o_id;

--shows the property type and the number of sold properties that are of that type
select p.type, count(sold.p_id) as numberSold  
from property p  
left outer join sold sold on  
p.p_id = sold.p_id 
group by p.type;

--shows the names of the people who have bought a property that was above the average price of property listings in LONDON ordered by price
select p.P_Id, p.postcode, p.city, p.price,  
(Select c.name FROM customer c where c.c_Id = s.c_Id) as Purchase  
from property p   
JOIN sold s  
on p.p_Id = s.p_id where p.price > (Select AVG(price) from property) AND p.city in ('LON') order by p.price DESC;

--shows the agency of the employees who are managers or salesman who work within the area E ordered by their name
select e.e_id, e.name, e.job, o.o_Id, o.area, a.a_Id, a.a_name  
from employee e  
JOIN office o  
on e.o_Id = o.o_Id  
JOIN agency a  
on o.a_id = a.a_id  
where e.job in ('Manager','Salesman')  
and o.area IN (Select area from office Where o.area LIKE '%E%')  
order by e.name ASC;

-- Shows employees information
Select e.e_Id, e.name, e.job, e.sal, o.postcode,   
(Select name from agency where a_id = o.a_id)   
as Agency   
from employee e   
join office o   
on e.o_Id = o.o_id   
where e.sal >= 1100 and o.district >= 2   
order by e.sal DESC;

