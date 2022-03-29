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

select salary27.monthly_salary as salary
from salary27
left join employee_salary27 on salary27.id=employee_salary27.salary_id
where employee_salary27.salary_id is null;

--4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary27.monthly_salary as salary
from salary27
left join employee_salary27 on salary27.id=employee_salary27.salary_id
where monthly_salary<2000 and employee_salary27.salary_id is null;

--5. Найти всех работников кому не начислена ЗП.

select employees27.employee_name as name 
from employees27
left join employee_salary27 on employees27.id=employee_salary27.employee_id
where employee_salary27.employee_id is null;

--6. Вывести всех работников с названиями их должности.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
order by role;

--7. Вывести имена и должность только Java разработчиков.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Java%'
order by role;

--8. Вывести имена и должность только Python разработчиков.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Python%'
order by role;

--9. Вывести имена и должность всех QA инженеров.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%QA%'
order by role;

--10. Вывести имена и должность ручных QA инженеров.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Manual QA%'
order by role;

--11. Вывести имена и должность автоматизаторов QA

select employees27.employee_name  as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Automation%'
order by role;

--12. Вывести имена и зарплаты Junior специалистов

select employees27.employee_name as name, salary27.monthly_salary as salary27, roles27.role_name as role
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов

select employees27.employee_name as name, salary27.monthly_salary as salary27, roles27.role_name as role
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов

select employees27.employee_name as name, salary27.monthly_salary as salary27, roles27.role_name as role
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков

select roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Java dev%';

--16. Вывести зарплаты Python разработчиков

select roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Python dev%' order by role;

--17. Вывести имена и зарплаты Junior Python разработчиков

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Middle JavaS%';

--19. Вывести имена и зарплаты Senior Java разработчиков

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Senior Java dev%';

--20. Вывести зарплаты Junior QA инженеров

select roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%QA%' order by role;

--21. Вывести среднюю зарплату всех Junior специалистов

select avg(salary27.monthly_salary) as average_junior_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков

select sum(salary27.monthly_salary) as sum_JS_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%JavaS%';

--23. Вывести минимальную ЗП QA инженеров

select min(salary27.monthly_salary) as sum_JS_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров

select max(salary27.monthly_salary) as sum_JS_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%QA%';

--25. Вывести количество QA инженеров

select count(roles27.role_name) as QA_number
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%QA%';

--26. Вывести количество Middle специалистов.

select count(roles27.role_name) as Middle_position_number
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Middle%';

--27. Вывести количество разработчиков

select count(roles27.role_name) as Middle_position_number
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%dev%';

--28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(salary27.monthly_salary) as sum_dev_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%dev%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
full outer join roles27 on roles27.id=roles_employee27.role_id
order by monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where monthly_salary >= 1700 and monthly_salary<=2300
order by monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where monthly_salary<2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where monthly_salary=1100 or monthly_salary=1500 or monthly_salary=2000
order by monthly_salary;