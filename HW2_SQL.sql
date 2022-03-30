--Table 'employees'
--1. Create a table called 'employees'
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
--drop table employees27;
create table employees27(
	id serial primary key,
	employee_name Varchar(50) not null);
-- 2. Add 70 employees to the table 
insert into employees27(employee_name)
values ('Quillen Gray'),
		('Xanthos Robinson'),
		('Emilio Edwards'),
		('Graham Evans'),
		('Martin Garcia'),
		('Nathaniel Barnes'),
		('Xan Lewis'),
		('Jax Moore'),
		('Usher Green'),
		('Emiliano Long'),
		('Franco Morris'),
		('Whitelaw Rivera'),
		('Maximiliano Morris'),
		('Xayvion Moore'),
		('Finnley Carter'),
		('Nikolas Jones'),
		('Judah Turner'),
		('Paul Long'),
		('Nicolai Gray'),
		('Orion Wilson'),
		('Wes Coleman'),
		('Isaak Thomas'),
		('Xan Simmons'),
		('Nathanael Nelson'),
		('Cooper Kelly'),
		('Maximus Lopez'),
		('Osiris Thomas'),
		('Easton Anderson'),
		('Jase Reed'),
		('Lorenzo Barnes'),
		('Matteo Hill'),
		('Douglas Anderson'),
		('Yahya Davis'),
		('Quinnten Lee'),
		('Ulrich Harris'),
		('Ulisses Jenkins'),
		('Braxton Baker'),
		('Yasir Wright'),
		('Gerardo King'),
		('Major Evans'),
		('Jonah Hughes'),
		('Quinten Howard'),
		('Matthew Hall'),
		('Jaxon Butler'),
		('Eric James'),
		('Talon Smith'),
		('Brian Patterson'),
		('Chase Alexander'),
		('Xayvion Scott'),
		('Maximus Kelly'),
		('Vincent Rogers'),
		('Lawson Nelson'),
		('Xaviell Flores'),
		('Porter Jackson'),
		('Lucas Diaz'),
		('Braxton Young'),
		('Salvador Williams'),
		('Ulises King'),
		('Kian Flores'),
		('Thaddeus Davis'),
		('Odin Thomas'),
		('Marcus Cook'),
		('Ulrich Peterson'),
		('Donovan Wright'),
		('Anderson Reed'),
		('Yakov Cooper'),
		('Enrique Martinez'),
		('Zavier Clark'),
		('William Hall'),
		('Uzziel Washington');
select * from employees27;
-- Table 'salary27'
-- 3. Create a table called 'salary27'
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
create table salary27(
	id serial primary key,
	monthly_salary int not null);
-- 4. Add 15 values to the table 
insert into salary27(monthly_salary)
values (1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);
select * from salary27;	
-- Table 'employee_salary27'
-- 5. Create a table 'employee_salary'
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
create table employee_salary27(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);
select * from employee_salary27;
--6. Fill in the table whit 40 rows where 10 of them contain employee_id that doesn't exist
insert into employee_salary27(employee_id, salary_id)
values(2, 6),
	  (1, 3),
	  (4, 2),
	  (74, 2),
	  (6, 1),
  	  (8, 4),
	  (10, 8),
	  (97, 9),
	  (12, 1),
	  (16, 10),
	  (32, 4),
	  (14, 6),
	  (43, 11),
	  (78, 12),
	  (52, 5),
      (11, 5),
      (99, 7),
	  (15, 9),
	  (61, 1),
	  (20, 8),
	  (55, 10),
	  (33, 3),
	  (88, 4),
	  (17, 4),
	  (19, 1),
	  (18, 8),
	  (71, 13),
	  (31, 11),
	  (84, 5),
	  (41, 2),
	  (48, 8),
	  (45, 9),
	  (93, 7),
	  (67, 1),
	  (64, 4),
	  (68, 9),
	  (36, 13),
	  (38, 14),
	  (77, 8),
	  (81, 9);
select * from roles27;
--Table roles 
--7. Create a table called roles27 
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
create table roles27(
	id serial primary key,
	role_name int not null unique);
--8. Change the type of data of the column role_name to varchar(30)
alter table roles27
alter column role_name type varchar(30) using role_name::varchar(30);
--9. Fill in the table roles27 with 20 rows 
insert into roles27(role_name)
values('Junior Python developer'),
	  ('Middle Python developer'),
	  ('Senior Python developer'),
	  ('Junior Java developer'),
	  ('Middle Java developer'),
	  ('Senior Java developer'),
	  ('Junior JavaScript developer'),
	  ('Middle JavaScript developer'),
	  ('Senior JavaScript developer'),
	  ('Junior Manual QA engineer'),
	  ('Middle Manual QA engineer'),
	  ('Senior Manual QA engineer'),
	  ('Project Manager'),
	  ('Designer'),
	  ('HR'),
	  ('CEO'),
	  ('Sales manager'),
	  ('Junior Automation QA engineer'),
	  ('Middle Automation QA engineer'),
	  ('Senior Automation QA engineer');
--Table roles_employee27
--10. Create table called roles_employee27
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee27(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees27(id),
	foreign key (role_id) 
		references roles27(id));
--11. Fil in the table roles_employee27 with 40 rows
insert into roles_employee27(employee_id, role_id)
values(2,2),
(70,2),
(53,14),
(24,3),
(41,13),
(16,9),
(21,9),
(11,8),
(4,11),
(8,1),
(34,3),
(51,6),
(52,3),
(65,9),
(44,5),
(42,12),
(38,7),
(56,9),
(26,10),
(64,2),
(62,4),
(31,12),
(39,14),
(9,7),
(7,4),
(18,9),
(47,6),
(63,11),
(27,8),
(29,9),
(13,1),
(19,20),
(37,19),
(32,5),
(59,8),
(58,8),
(40,2),
(20,18),
(3,11),
(17,3);

