create table WAR(wid int primary key, w_name varchar(40) unique, w_age int check(w_age <25), w_department varchar(40), 
w_salary int ,w_father varchar(40) unique)
----------------------------------------------------------------------------------------------
insert into WAR values
(17,'leo',21,'Analaysing',1300000,'Flora'),

(16,'lisa',21,'Analaysing',13000,'Fahad'),
(1,'Mangalakshmi',22,'Computer Science',15000, 'Sanmugam'),
(2,'Boopathi',17,'Commerce',14000,'Venkat'),
(3,'Venkatesan',19,'Computer Application',15000,'Sivagami'),
(4,'Kanipriya',20,'Computer Science',17000,'Elongavan'),
(5,'Kanimozhi',19,'Business',12000,'Elogavan'),
(6,'Bala',23,'Computer Apllication',18000,'Rao'),
(7,'kokila',24,'Quality',17000,'Vinoth'),
(8,'Durga',23,'Quality',20000,'Karthik'),
(9,'Povinesan',19,'Computer Application',15000,'Sivakumar'),
(10,'priya',20,'Computer Science',17000,'Elon'),
(11,'mozhi',19,'Business',102000,'Elo'),
(12,'Kani',20,'Computer Science',170000,'gavan'),
(15,'lia',21,'Analaysing',13000,'Farina'),
(14,'lavanya',21,'Analaysing',13000,'Elongava'),
(13,'lakshmi',24,'Analayst',30000,'Elongovan')


select w_name, max(w_salary) from WAR group by w_name 
select w_name ,w_salary from war where w_salary in(select max(w_salary) from WAR )
select sum(w_salary) from war where w_department ='Quality' 
select w_department,sum(w_salary) from war group by w_department  having sum(w_salary)>30
select count(distinct w_department) from war
