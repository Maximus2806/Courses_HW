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
--13. Show all users that have been created on 2021-07-12 00:00:00
select * from public.students where created_on = '2021-07-12 00:00:00';
--14. Show all users that have been created on 2021-07-12 00:00:00 and teir password is 1m313
select * from public.students where created_on = '2021-07-12 00:00:00' and password = '1m313';
--15. Show all users that have been created on 2021-07-12 00:00:00 and teir name includes Andrey
select * from public.students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
--16. Show all users that have been created on 2021-07-12 00:00:00 and teir name includes 8
select * from public.students where created_on = '2021-07-12 00:00:00' and name like '%8%';
--17. Show all users which id equals 110
select * from public.students where id = 110;
--18. Show all users which id equals 153
select * from public.students where id = 153;
--19. Show all users which id is greater than 140
select * from public.students where id > 140;
--20. Show all users whose id is smaller than 130
select * from public.students where id < 130;
--21. Show all users whose id is smaller than 127 or greater than 188 
select * from public.students where id < 127 or id > 188;
--22. Show all users whose id is smaller than or equals to 137
select * from public.students where id <= 137;
--23. Show all users whose id is greater than or equals to 137
select * from public.students where id >= 137;
--24. Show all users whose id is greater than 180 and smaller than 190
select * from public.students where id > 180 and id < 190;
--25. Show all users whose id is between 180 and 190
select * from public.students where id between 180 and 190;
--26. Show all users whose password is 12333, 1m313, 123313
select * from public.students where password in ('12333', '1m313', '123313');
--27. Show all users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from public.students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
--28. Show the smallest id
select min(id) as Smallest_Id from public.students;
--29. Show the largest id
select max(id) as Largest_Id from public.students;
--30. Show the number of users
select count(id) from public.students;
--31. Show user's id, name, creation date. Sort ascending by created_on column
select id, name, created_on from public.students order by created_on;
--32. Show user's id, name, creation date. Sort descending by created_on column
select id, name, created_on from public.students order by created_on desc;

 