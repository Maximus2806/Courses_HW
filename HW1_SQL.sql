--1. Show all rows and columns
select * from public.students;
--2. Show all students from the table
select * from public.students;
--3. Show only student's ID only
select id from public.students;
--4. Show all student's names only
select name from public.students;
--5. Show all student's emails only
select email from public.students;
--6. Show all student's names and emails
select name, email from public.students;
--7. Show all student's id, names, emails and creation dates
select id, name, email, created_on from public.students;
--8. Show all users where password is 12333
select * from public.students where password = '12333';
--9. Show all users that have been created on 2021-03-26 00:00:00
select * from public.students where created_on = '2021-03-26 00:00:00';
--10. Show all users whose name includes the word Anna
select * from public.students where name like '%Anna%';
--11. Show all users where there is 8 at the end of their name
select * from public.students where name like '%8';
--12. Show all users whose name includes the letter a
select * from public.students where name like '%a%';

 