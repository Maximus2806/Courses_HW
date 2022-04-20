--1. 1. Show all the employees and their salaries whose salaries are represented in the database. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees27.employee_name as name, salary27.monthly_salary as salary
from employees27
join employee_salary27 on employees27.id=employee_salary27.employee_id
join salary27 on salary27.id=employee_salary27.salary_id
order by salary27.monthly_salary;

--2. Show all the employees whose salaries are smaller than 2000. ������� ���� ���������� � ������� �� ������ 2000.

select employees27.employee_name as name, salary27.monthly_salary as salary
from employees27 
join employee_salary27 on employees27.id=employee_salary27.employee_id
join salary27 on salary27.id=employee_salary27.salary_id
where monthly_salary < 2000;

--3. Show all the rows with salaries where there is no employee assigned to. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select salary27.monthly_salary as salary
from salary27
left join employee_salary27 on salary27.id=employee_salary27.salary_id
where employee_salary27.salary_id is null;

--4. ������� ��� ���������� ������� ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select salary27.monthly_salary as salary
from salary27
left join employee_salary27 on salary27.id=employee_salary27.salary_id
where monthly_salary<2000 and employee_salary27.salary_id is null;

--5. ����� ���� ���������� ���� �� ��������� ��.

select employees27.employee_name as name 
from employees27
left join employee_salary27 on employees27.id=employee_salary27.employee_id
where employee_salary27.employee_id is null;

--6. ������� ���� ���������� � ���������� �� ���������.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
order by role;

--7. ������� ����� � ��������� ������ Java �������������.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Java%'
order by role;

--8. ������� ����� � ��������� ������ Python �������������.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Python%'
order by role;

--9. ������� ����� � ��������� ���� QA ���������.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%QA%'
order by role;

--10. ������� ����� � ��������� ������ QA ���������.

select employees27.employee_name as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id 
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Manual QA%'
order by role;

--11. ������� ����� � ��������� ��������������� QA

select employees27.employee_name  as name, roles27.role_name as role
from employees27
join roles_employee27 on employees27.id=roles_employee27.employee_id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Automation%'
order by role;

--12. ������� ����� � �������� Junior ������������

select employees27.employee_name as name, salary27.monthly_salary as salary27, roles27.role_name as role
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������

select employees27.employee_name as name, salary27.monthly_salary as salary27, roles27.role_name as role
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������

select employees27.employee_name as name, salary27.monthly_salary as salary27, roles27.role_name as role
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Senior%';

--15. ������� �������� Java �������������

select roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Java dev%';

--16. ������� �������� Python �������������

select roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Python dev%' order by role;

--17. ������� ����� � �������� Junior Python �������������

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Junior Python%';

--18. ������� ����� � �������� Middle JS �������������

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Middle JavaS%';

--19. ������� ����� � �������� Senior Java �������������

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%Senior Java dev%';

--20. ������� �������� Junior QA ���������

select roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
join employee_salary27 on employee_salary27.employee_id=employees27.id
join salary27 on employee_salary27.salary_id=salary27.id
where role_name like '%QA%' order by role;

--21. ������� ������� �������� ���� Junior ������������

select avg(salary27.monthly_salary) as average_junior_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%Junior%';

--22. ������� ����� ������� JS �������������

select sum(salary27.monthly_salary) as sum_JS_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%JavaS%';

--23. ������� ����������� �� QA ���������

select min(salary27.monthly_salary) as sum_JS_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%QA%';

--24. ������� ������������ �� QA ���������

select max(salary27.monthly_salary) as sum_JS_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%QA%';

--25. ������� ���������� QA ���������

select count(roles27.role_name) as QA_number
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%QA%';

--26. ������� ���������� Middle ������������.

select count(roles27.role_name) as Middle_position_number
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%Middle%';

--27. ������� ���������� �������������

select count(roles27.role_name) as Middle_position_number
from employees27
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where role_name like '%dev%';

--28. ������� ���� (�����) �������� �������������.

select sum(salary27.monthly_salary) as sum_dev_salary
from salary27
join employee_salary27 on employee_salary27.salary_id=salary27.id
join employees27 on employees27.id=employee_salary27.employee_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where roles27.role_name like '%dev%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
full outer join roles27 on roles27.id=roles_employee27.role_id
order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where monthly_salary >= 1700 and monthly_salary<=2300
order by monthly_salary;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where monthly_salary<2300
order by monthly_salary;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employees27.employee_name as name, roles27.role_name as role, salary27.monthly_salary as salary27
from employees27
join employee_salary27 on employee_salary27.employee_id=employees27.id 
join salary27 on salary27.id=employee_salary27.salary_id
join roles_employee27 on roles_employee27.employee_id=employees27.id
join roles27 on roles27.id=roles_employee27.role_id
where monthly_salary=1100 or monthly_salary=1500 or monthly_salary=2000
order by monthly_salary;