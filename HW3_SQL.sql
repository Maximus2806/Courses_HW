--1. 1. Show all the employees and their salaries whose salaries are represented in the database. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees27.employee_name as name, salary27.monthly_salary as salary
from employees27
join employee_salary27 on employees27.id=employee_salary27.employee_id
join salary27 on salary27.id=employee_salary27.salary_id
order by salary27.monthly_salary;
--2. Show all the employees whose salaries are smaller than 2000. Вывести всех работников у которых ЗП меньше 2000.
select employees27.employee_name as name, salary27.monthly_salary as salary
from employees27 
join employee_salary27 on employees27.id=employee_salary27.employee_id
join salary27 on salary27.id=employee_salary27.salary_id
where monthly_salary < 2000;
--3. Show all the rows with salaries where there is no employee assigned to. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary27