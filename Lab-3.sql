Activity-1

SELECT last_name, Hire_Date FROM emps 
WHERE Hire_Date LIKE '%1994%';


Activity-2

SELECT Last_name, Salary, Commission_pct
From emps
WHERE Commission_pct IS NOT NULL
ORDER BY Salary, Commission_pct DESC ;

Activity-3

SELECT Last_name 
FROM emps
WHERE Last_Name LIKE "%a%" 
AND Last_Name LIKE "%e%" ;


Activity-4

SELECT E.first_name , E.last_name , E.department_id , D.department_name 
FROM emps E 
JOIN depts D 
ON E.department_id = D.department_id ;


Activity-5

SELECT e.last_name, d.department_name, d.location_id, l.city
FROM emps e, depts d, locs l
WHERE e.department_id = d.department_id
AND
d.location_id = l.location_id
AND e.commission_pct IS NOT NULL;

Activity-6

SELECT e.last_name, e.job_id, e.department_id,d.department_name
FROM emps e 
JOIN depts d
ON (e.department_id = d.department_id)
JOIN locs l
ON (d.location_id = l.location_id)
WHERE l.city = "toronto";

Activity-7
SELECT Last_name, Salary, Commission_pct
From emps
WHERE Commission_pct IS NOT NULL
ORDER BY Salary, Commission_pct DESC ;

Activity-8

SELECT e.Last_name AS "Employee", e.Employee_Id AS "EMP#", a.Last_name AS "Manager", a.Employee_Id AS "Mgr#" From emps e, emps a WHERE e.Manager_id=a.Employee_Id;


Activity-9

SELECT ROUND(MAX(salary),0) "Maximum", ROUND(MIN(salary),0) "Minimum", ROUND(SUM(salary),0) "Sum", ROUND(AVG(salary),0) "Average" FROM emps;

Activity-10

SELECT job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary) FROM emps GROUP BY job_id;

Activity-11

SELECT job_id, COUNT(Job_Id) FROM emps GROUP BY job_id;


Activity-12

SELECT manager_id, MIN(salary) FROM emps WHERE manager_id IS NOT NULL GROUP BY manager_id ORDER BY MIN(salary) DESC;


HW

SELECT d.Department_Name AS "Name", l.City AS "Location", COUNT(d.Department_id) AS "Number of People", cast(ROUND(AVG(e.Salary)) as decimal(16,2)) AS "Salary" FROM emps e, depts d, locs l WHERE e.Department_Id=d.Department_id AND d.Location_id=l.Location_id GROUP BY d.Department_id;
