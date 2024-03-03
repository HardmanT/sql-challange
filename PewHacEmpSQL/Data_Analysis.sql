-- DA 1. employees name, gender, and salary
SELECT e.emp_num, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_num = s.emp_num;

--DA 2. emplyees hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e 
WHERE EXTRACT(YEAR FROM e.hire_date) = 1986;

--DA 3. managers for each department
SELECT d.dept_num, d.dept_nam, dm.emp_num, e.last_name, e.first_name
FROM departments d
JOIN dept_manager dm ON d.dept_num = dm.dept_num
JOIN employees e ON dm.emp_num = e.emp_num;

--DA 4. employees and their departments
SELECT de.dept_num, de.emp_num, e.last_name, e.first_name, d.dept_nam
FROM dept_emp de
JOIN employees e ON de.emp_num = e.emp_num
JOIN departments d ON de.dept_num = d.dept_num;

--DA 5. employees named Hercules B.
SELECT e.first_name, e.last_name, e.gender
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--DA 6. employees in the sales department
SELECT e.emp_num, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_num = de.emp_num
WHERE de.dept_num = 'd007';

--DA 7. employees in the sales and development department
SELECT e.emp_num, e.last_name, e.first_name, d.dept_nam
FROM employees e
JOIN dept_emp de ON e.emp_num = de.emp_num
JOIN departments d ON de.dept_num = d.dept_num
WHERE de.dept_num = 'd007' OR de.dept_num = 'd005';

--DA 8. employees with the same last name
SELECT e.last_name, COUNT(*) AS frequency
FROM employees e
GROUP BY e.last_name
ORDER BY frequency DESC;

--Easy access to view the tables
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

