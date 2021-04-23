create database assignment;
 
use assignment;

create table employee_details(
EMPLOYEE_ID int,
EMPLOYEE_NAME varchar(15),
EMPLOYEE_NUMBER bigint,
EMPLOYEE_ADDRESS varchar(100)
);
alter table employee_details add EMPLOYEE_SALARY decimal(10,4);
desc employee_details;

select * FROM employee_details;

show columns from employee_details;

alter table employee_details modify EMPLOYEE_ID int primary key;

alter table EMPLOYEE_details modify EMPLOYEE_ADDRESS varchar(60);

insert into employee_details values(3,'Santhu',9066404341,'peenya');

insert into employee_details values(1,'appu',9378504533,'belagavi');

insert into employee_details values (5,'darshan',8769398333,'shivmoga');

insert into employee_details values (2,'ali',7613976893,'bangalore');

insert into employee_details values (9,'thertha',67868776893,'shivmoga');

select distinct EMPLOYEE_ADDRESS from  employee_details;

update employee_details set  EMPLOYEE_NUMBER = 8660247211 where EMPLOYEE_ID = 1;

update employee_details set EMPLOYEE_NUMBER = 6786877689 where EMPLOYEE_NAME = 'thertha';

update EMPLOYEE_details set EMPLOYEE_SALARY = 25000.00 where EMPLOYEE_id = 1;

update EMPLOYEE_details set EMPLOYEE_SALARY = 35000.00 where EMPLOYEE_id = 3;

update EMPLOYEE_details set EMPLOYEE_SALARY = 45000.0 where EMPLOYEE_id =2;
update EMPLOYEE_details set EMPLOYEE_SALARY = 20000.0 where EMPLOYEE_id = 5;
update EMPLOYEE_details set EMPLOYEE_SALARY = 20000.0 where EMPLOYEE_id =9;

select max(EMPLOYEE_SALARY) as max_value from EMPLOYEE_details;    

select min(EMPLOYEE_SALARY) as min_value from EMPLOYEE_details;                                  
                              
select * from EMPLOYEE_details where EMPLOYEE_SALARY between 25000 and 35000 order by EMPLOYEE_SALARY desc;

select * from EMPLOYEE_details where EMPLOYEE_ADDRESS in('shivmoga');

select * from EMPLOYEE_details where EMPLOYEE_NAME like '%a_t%';

truncate EMPLOYEE_details;

drop  table EMPLOYEE_details;

drop database assignment;
