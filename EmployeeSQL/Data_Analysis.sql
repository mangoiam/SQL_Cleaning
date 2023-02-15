SELECT Employee.emp_no, Employee.last_name, Employee.first_name, Employee.sex, Salaries.salary
FROM Employee
JOIN Salaries ON Employee.emp_no= Salaries.emp_no
ORDER BY Salary DESC
LIMIT 10;

--SELECT *
--FROM employee;

SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';

SELECT Dept_Manager.dept_no, Dept_Manager.emp_no, Departments.dept_name, Employee.last_name, Employee.first_name
FROM Dept_Manager
JOIN Departments ON Departments.dept_no = Dept_Manager.dept_no
JOIN Employee ON Employee.emp_no = Dept_Manager.emp_no;

SELECT Dept_emp.dept_no, Dept_emp.emp_no, Employee.last_name, Employee.first_name, Departments.dept_name
FROM Employee
JOIN Dept_emp ON Employee.emp_no = Dept_emp.emp_no
JOIN Departments ON Dept_emp.dept_no = Departments.dept_no;

SELECT first_name, last_name, sex
FROM Employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT Employee.emp_no, Employee.first_name, Employee.last_name
FROM Employee
JOIN Dept_emp ON Employee.emp_no = Dept_emp.emp_no
JOIN Departments on Dept_emp.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';

SELECT Employee.emp_no, Employee.first_name, Employee.last_name, Departments.dept_name
FROM Employee
JOIN Dept_emp ON Employee.emp_no = Dept_emp.emp_no
JOIN Departments on Dept_emp.dept_no = Departments.dept_no
WHERE dept_name IN ('Sales', 'Development');

SELECT COUNT(last_name), last_name
FROM Employee
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


