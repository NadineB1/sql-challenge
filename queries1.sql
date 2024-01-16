SELECT * FROM "Departments"
SELECT * FROM "Dept_emp"
SELECT * FROM "Dept_manager"
SELECT * FROM "Employees"
SELECT * FROM "Salaries"
SELECT * FROM "Titles"


SELECT E.emp_no, E.last_name, E.first_name, S.salary 
FROM "Employees" as E 
JOIN "Salaries" as S
ON E.emp_no=S.emp_no
ORDER BY E.emp_no

SELECT first_name,last_name,hire_date
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date

SELECT D.dept_name,D.dept_no,E.emp_no,E.last_name,E.first_name 
FROM "Employees" as E
JOIN "Dept_manager" as DM
ON E.emp_no=DM.emp_no
JOIN "Departments" as D
ON DM.dept_no =D.dept_no
ORDER BY D.dept_no

SELECT D.dept_name,D.dept_no,E.emp_no,E.last_name,E.first_name 
FROM "Employees" as E
JOIN "Dept_emp" as DE
ON E.emp_no=DE.emp_no
JOIN "Departments" as D
ON DE.dept_no =D.dept_no
ORDER BY D.dept_no

SELECT first_name,last_name,sex
FROM "Employees"
WHERE first_name='Hercules'
AND last_name LIKE 'B%'

SELECT E.emp_no,E.last_name,E.first_name 
FROM "Employees" as E
JOIN "Dept_emp" as DE
ON E.emp_no=DE.emp_no
JOIN "Departments" as D
ON DE.dept_no =D.dept_no
WHERE D.dept_name='Sales'

SELECT E.emp_no,E.last_name,E.first_name,D.dept_name 
FROM "Employees" as E
JOIN "Dept_emp" as DE
ON E.emp_no=DE.emp_no
JOIN "Departments" as D
ON DE.dept_no =D.dept_no
WHERE D.dept_name='Sales'

SELECT E.emp_no, E.last_name 
FROM "Employees" as E
GROUP BY last_name, emp_no
HAVING COUNT(*)>1
