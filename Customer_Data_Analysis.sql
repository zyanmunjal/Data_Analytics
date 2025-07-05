CREATE DATABASE CustomerAnalysis;
USE CustomerAnalysis;

CREATE TABLE Agents (
    AGENT_CODE VARCHAR(10) PRIMARY KEY,
    AGENT_NAME VARCHAR(100),
    WORKING_AREA VARCHAR(100),
    COMMISSION DECIMAL(5,2),
    PHONE_NO VARCHAR(50),
    COUNTRY VARCHAR(100)
);

CREATE TABLE Customer (
    CUST_CODE VARCHAR(10) PRIMARY KEY,
    CUST_NAME VARCHAR(100),
    CUST_CITY VARCHAR(100),
    WORKING_AREA VARCHAR(100),
    CUST_COUNTRY VARCHAR(100),
    GRADE INT,
    OPENING_AMT DECIMAL(10,2),
    RECEIVE_AMT DECIMAL(10,2),
    PAYMENT_AMT DECIMAL(10,2),
    OUTSTANDING_AMT DECIMAL(10,2),
    PHONE_NO VARCHAR(20),
    AGENT_CODE VARCHAR(10) REFERENCES Agents(AGENT_CODE)
);
CREATE TABLE Orders (
    ORD_NUM VARCHAR(10) PRIMARY KEY,
    ORD_AMOUNT DECIMAL(10,2),
    ADVANCE_AMOUNT DECIMAL(10,2),
    ORD_DATE DATE,
    CUST_CODE VARCHAR(10) REFERENCES Customer(CUST_CODE),
    AGENT_CODE VARCHAR(10) REFERENCES Agents(AGENT_CODE),
    ORD_DESCRIPTION VARCHAR(100)
);
INSERT INTO Agents (AGENT_CODE, AGENT_NAME, WORKING_AREA, COMMISSION, PHONE_NO, COUNTRY) VALUES
('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', NULL),
('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', NULL),
('A003', 'Alex', 'London', 0.13, '075-12458969', NULL),
('A004', 'Ivan', 'Torento', 0.15, '008-22544166', NULL),
('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', NULL),
('A006', 'Suresh', 'Chennai', 0.12, '078-22255588', NULL),
('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', NULL),
('A008', 'Alford', 'New York', 0.12, '044-25874365', NULL),
('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', NULL),
('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', NULL),
('A011', 'Ravi Kumar', 'Bangalore', 0.15, '044-52981425', NULL),
('A012', 'Lucida', 'San Jose', 0.12, '084-12358964', NULL);

INSERT INTO Customer (CUST_CODE, CUST_NAME, CUST_CITY, WORKING_AREA, CUST_COUNTRY, GRADE, OPENING_AMT, RECEIVE_AMT, PAYMENT_AMT, OUTSTANDING_AMT, PHONE_NO, AGENT_CODE) VALUES
('C00001', 'Micheal', 'New York', 'New York', 'USA', 2, 3000.00, 5000.00, 2000.00, 6000.00, 'CCCCCCC', 'A008'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', 3, 5000.00, 7000.00, 9000.00, 3000.00, 'DDNRDRH', 'A008'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', 2, 8000.00, 7000.00, 7000.00, 8000.00, 'MJYURFD', 'A004'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', 1, 5000.00, 8000.00, 7000.00, 6000.00, 'AAAAAAA', 'A005'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', 1, 7000.00, 11000.00, 7000.00, 11000.00, '147-25896312', 'A002'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', 1, 10000.00, 7000.00, 6000.00, 11000.00, 'DDDDDDD', 'A004'),
('C00007', 'Ramanath', 'Chennai', 'Chennai', 'India', 1, 7000.00, 11000.00, 9000.00, 9000.00, 'GHRDWSD', 'A010'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', 1, 7000.00, 7000.00, 9000.00, 5000.00, 'HJKORED', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', 3, 8000.00, 7000.00, 3000.00, 12000.00, 'Phone No', 'A002'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', 3, 6000.00, 4000.00, 5000.00, 5000.00, 'MMMMMMM', 'A009'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', 3, 7000.00, 11000.00, 7000.00, 11000.00, 'PPHGRTS', 'A020'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', 1, 5000.00, 7000.00, 9000.00, 3000.00, 'KRFYGJK', 'A012'),
('C00013', 'Holmes', 'London', 'London', 'UK', 2, 6000.00, 5000.00, 7000.00, 4000.00, 'BBBBBBB', 'A003'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'AAAATGF', 'A001'),
('C00015', 'Stuart', 'London', 'London', 'UK', 1, 6000.00, 8000.00, 3000.00, 11000.00, 'GFSGERS', 'A003'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'JRTVFDD', 'A007'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', 2, 8000.00, 4000.00, 3000.00, 9000.00, 'AAAAAAB', 'A007'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', 2, 7000.00, 7000.00, 9000.00, 5000.00, 'NHBGVFC', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', 1, 8000.00, 7000.00, 7000.00, 8000.00, 'ZZZZBFV', 'A010'),
('C00020', 'Albert', 'New York', 'New York', 'USA', 3, 5000.00, 7000.00, 6000.00, 6000.00, 'BBBBSBB', 'A008'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', 1, 7000.00, 7000.00, 7000.00, 7000.00, 'WERTGDF', 'A005'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', 2, 7000.00, 11000.00, 9000.00, 9000.00, '113-12345678', 'A002'),
('C00023', 'Karl', 'London', 'London', 'UK', 0, 4000.00, 6000.00, 7000.00, 3000.00, 'AAAABAA', 'A006'),
('C00024', 'Cook', 'London', 'London', 'UK', 2, 4000.00, 9000.00, 7000.00, 6000.00, 'FSDDSDF', 'A006'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', 2, 5000.00, 7000.00, 4000.00, 8000.00, 'AVAVAVA', 'A011');

INSERT INTO Orders (ORD_NUM, ORD_AMOUNT, ADVANCE_AMOUNT, ORD_DATE, CUST_CODE, AGENT_CODE, ORD_DESCRIPTION) VALUES
(200100, 1000.00, 600.00, '2008-01-08', 'C00013', 'A003', 'SOD'),
(200101, 3000.00, 1000.00, '2008-08-21', 'C00001', 'A008', 'SOD'),
(200102, 2000.00, 300.00, '2008-06-12', 'C00012', 'A012', 'SOD'),
(200103, 1500.00, 700.00, '2008-10-10', 'C00021', 'A005', 'SOD'),
(200104, 1500.00, 500.00, '2009-03-21', 'C00006', 'A004', 'SOD'),
(200105, 2500.00, 500.00, '2008-10-22', 'C00025', 'A011', 'SOD'),
(200106, 2500.00, 700.00, '2008-12-20', 'C00007', 'A010', 'SOD'),
(200107, 4500.00, 900.00, '2008-05-27', 'C00007', 'A010', 'SOD'),
(200108, 4000.00, 600.00, '2008-12-05', 'C00008', 'A004', 'SOD'),
(200109, 3500.00, 800.00, '2008-07-12', 'C00011', 'A010', 'SOD'),
(200110, 3000.00, 500.00, '2008-05-15', 'C00019', 'A010', 'SOD'),
(200111, 1000.00, 300.00, '2008-10-22', 'C00020', 'A008', 'SOD'),
(200112, 2000.00, 400.00, '2008-05-30', 'C00016', 'A007', 'SOD'),
(200113, 4000.00, 600.00, '2008-06-11', 'C00022', 'A002', 'SOD'),
(200114, 3500.00, 2000.00, '2008-06-21', 'C00002', 'A008', 'SOD'),
(200116, 500.00, 100.00, '2009-05-21', 'C00010', 'A009', 'SOD'),
(200117, 800.00, 200.00, '2008-09-27', 'C00014', 'A009', 'SOD'),
(200118, 500.00, 100.00, '2008-09-20', 'C00023', 'A001', 'SOD'),
(200119, 4000.00, 700.00, '2008-09-28', 'C00007', 'A010', 'SOD'),
(200120, 500.00, 100.00, '2009-02-20', 'C00009', 'A012', 'SOD'),
(200121, 1500.00, 600.00, '2008-09-23', 'C00008', 'A004', 'SOD'),
(200122, 2500.00, 400.00, '2008-09-11', 'C00003', 'A004', 'SOD'),
(200123, 500.00, 100.00, '2008-12-10', 'C00022', 'A002', 'SOD'),
(200124, 500.00, 100.00, '2009-03-26', 'C00017', 'A007', 'SOD'),
(200125, 2000.00, 600.00, '2008-11-19', 'C00018', 'A005', 'SOD'),
(200126, 500.00, 100.00, '2008-07-29', 'C00022', 'A002', 'SOD'),
(200127, 2500.00, 400.00, '2009-10-12', 'C00015', 'A003', 'SOD'),
(200128, 3500.00, 1500.00, '2009-07-24', 'C00009', 'A002', 'SOD'),
(200129, 2500.00, 500.00, '2009-07-26', 'C00024', 'A006', 'SOD'),
(200130, 2500.00, 400.00, '2008-10-29', 'C00025', 'A011', 'SOD'),
(200131, 900.00, 150.00, '2009-08-17', 'C00012', 'A012', 'SOD'),
(200133, 1200.00, 400.00, '2009-09-26', 'C00009', 'A002', 'SOD'),
(200134, 4200.00, 1800.00, '2008-09-12', 'C00004', 'A005', 'SOD'),
(200135, 2000.00, 800.00, '2009-06-23', 'C00007', 'A010', 'SOD');

select * from agents;
select * from customer;
select * from orders;

select * from agents
where AGENT_NAME is null or WORKING_AREA is null or COMMISSION is null or PHONE_NO is null or COUNTRY is null;

SET SQL_SAFE_UPDATES=0;

# updated country which were null in dataset #
DELIMITER //

create procedure UpdateAgentCountries()
begin
    update agents set COUNTRY = 'India' where trim(WORKING_AREA) in ('Bangalore', 'Mumbai', 'Chennai');
    update agents set COUNTRY = 'UK' where TRIM(WORKING_AREA) in ('London', 'Hampshair');
    update agents set COUNTRY = 'Canada' where trim(WORKING_AREA) = 'Torento';
    update agents set COUNTRY = 'Australia' where trim(WORKING_AREA) = 'Brisban';
    update agents set COUNTRY = 'USA' where trim(WORKING_AREA) in ('New York', 'San Jose');
end //

DELIMITER ;

call UpdateAgentCountries();
   
select * from customer
where CUST_NAME is null or CUST_CITY is null or WORKING_AREA is null or CUST_COUNTRY is null or GRADE is null or OPENING_AMT is null 
or RECEIVE_AMT is null or PAYMENT_AMT is null or OUTSTANDING_AMT is null or PHONE_NO is null or AGENT_CODE is null;
   
select * from orders
where ORD_AMOUNT is null or ADVANCE_AMOUNT is null or ORD_DATE is null or CUST_CODE is null or AGENT_CODE is null or ORD_DESCRIPTION is null;

select AGENT_CODE, count(*) 
from agents
group by AGENT_CODE having count(*) > 1;

select CUST_CODE, count(*) 
from customer group by CUST_CODE
having count(*) > 1;

select ORD_NUM, count(*) 
from orders group by ORD_NUM
having count(*) > 1;

select *, (OPENING_AMT + RECEIVE_AMT - PAYMENT_AMT) as CalculatedOutstanding
from customer where OUTSTANDING_AMT <> (OPENING_AMT + RECEIVE_AMT - PAYMENT_AMT);

select CUST_CODE, AGENT_CODE
from customer
where AGENT_CODE not in (select AGENT_CODE from Agents);

# updated the customer row with existing agent code # 
update customer set AGENT_CODE = 'A010' where CUST_CODE = 'C00011';

select ORD_NUM, AGENT_CODE
from orders where AGENT_CODE not in (select AGENT_CODE from Agents);

select CUST_CODE, CUST_NAME, PHONE_NO from customer
where PHONE_NO is null or PHONE_NO = '' or PHONE_NO like '%[A-Za-z]%' or PHONE_NO not regexp '^[+0-9(). -]+$' or length(PHONE_NO) < 7;  

# updated wrong phone no #
DELIMITER //

create procedure UpdateInvalidPhoneNumbersUnique()
begin
    declare done INT DEFAULT FALSE;
    declare custCode VARCHAR(10);
    declare counter INT DEFAULT 1;

    declare cur cursor for
        select CUST_CODE from Customer where PHONE_NO regexp '[A-Za-z]' or PHONE_NO like '%Phone No%';

    declare continue handler for not found set done = TRUE;

    open cur;

    read_loop: loop
        fetch cur into custCode;
        if done then
            leave read_loop;
        end if;
        
        update customer
        set PHONE_NO = concat('123-', lpad(counter, 7, '0'))
        where CUST_CODE = custCode;

        set counter = counter + 1;
    end loop;

    close cur;
end //

DELIMITER ;

call UpdateInvalidPhoneNumbersUnique();

select c.CUST_CODE, c.CUST_NAME
from customer c join orders o on c.CUST_CODE = o.CUST_CODE
where o.ORD_NUM is null;

select * from customer
where OPENING_AMT < 0 or RECEIVE_AMT < 0 or PAYMENT_AMT < 0 or OUTSTANDING_AMT < 0;

select * from orders
where ADVANCE_AMOUNT > ORD_AMOUNT;

select * from customer
where CUST_NAME = '' or CUST_CITY = '' or WORKING_AREA = '' or CUST_COUNTRY = '';

select * from orders
where ORD_AMOUNT < 0 or ADVANCE_AMOUNT < 0;

#1 customer details along with the agent's name who helped them, showing the total outstanding amount
select c.CUST_CODE, c.CUST_NAME, c.CUST_CITY, a.AGENT_NAME, c.OUTSTANDING_AMT
from customer c join agents a on c.AGENT_CODE = a.AGENT_CODE;

#2 agents whose total order amount exceeds 10,000   
select a.AGENT_CODE, a.AGENT_NAME, sum(o.ORD_AMOUNT) as TotalOrderAmount
from agents a join orders o on a.AGENT_CODE = o.AGENT_CODE
group by a.AGENT_CODE, a.AGENT_NAME
having TotalOrderAmount > 10000;

#3 list of all orders along with customer names and their respective agent's names
create view OrderCustomerAgentView as
select o.ORD_NUM, o.ORD_AMOUNT, o.ORD_DATE, c.CUST_NAME, a.AGENT_NAME
from orders o join customer c on o.CUST_CODE = c.CUST_CODE
join agents a on o.AGENT_CODE = a.AGENT_CODE;
select * from OrderCustomerAgentView;

#4 orders placed by customers who reside in New York
select o.ORD_NUM, o.ORD_AMOUNT, o.ADVANCE_AMOUNT, o.ORD_DATE, o.CUST_CODE, o.AGENT_CODE, o.ORD_DESCRIPTION
from orders o join customer c on o.CUST_CODE = c.CUST_CODE
where c.CUST_CITY = 'New York';

#5 total number of orders handled by each agent
select a.AGENT_CODE, a.AGENT_NAME, count(o.ORD_NUM) as TotalOrders
from agents a join orders o on a.AGENT_CODE = o.AGENT_CODE
group by a.AGENT_CODE, a.AGENT_NAME;

#6 customer advance amount >= 50% of the order amount
Select * from orders where ADVANCE_AMOUNT >= 0.5*ORD_AMOUNT;

#7 count of customers in each city + outstanding amount of each city
Select CUST_CITY, 
COUNT(*) as NumberOfCustomers,
SUM(OUTSTANDING_AMT) as TotalOutstanding from customer
Group by CUST_CITY;

#8 customer with orders(even with no orders)
Select customer.CUST_CODE, customer.CUST_NAME, orders.ORD_NUM from customer
Left Join orders on customer.CUST_CODE = orders.CUST_CODE;

#9 customer who placed the highest order amount 
Select * from orders 
where ORD_AMOUNT = (Select MAX(ORD_AMOUNT) from orders);

#10 total order amount for customers who have placed more than 2 orders u
Select SUM(ORD_AMOUNT) as TOTAL_AMOUNT from orders
where CUST_CODE in (
    Select CUST_CODE from orders
    group by CUST_CODE
    having COUNT(*) > 2
);

#11 orders placed in the month of May 2008
Select * from orders 
where month(ORD_DATE) = 5 and year(ORD_DATE) = 2008;

#12  orders where the amount is >= 1000 or the order date is before '2008-12-31'
Select * from orders 
where ORD_AMOUNT > 1000 
   or ORD_DATE < '2008-12-31';
   
#13 orders placed by customers in 'New York' or whose order amount is > 5000
Select * from orders 
where CUST_CODE in (
    Select CUST_CODE 
    from customer 
    where CUST_CITY = 'New York'
)
or ORD_AMOUNT > 5000;

#14 agents who have handled orders for more than 3 distinct customers
Select AGENT_CODE from orders
group by AGENT_CODE
having count(distinct CUST_CODE) > 3;

#15 customers who have made at least one payment but still have an outstanding amount > 7000
Select CUST_NAME, CUST_CITY, PAYMENT_AMT, OUTSTANDING_AMT from customer
where PAYMENT_AMT > 0 and OUTSTANDING_AMT > 7000;