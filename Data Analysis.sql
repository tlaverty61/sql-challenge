-- DATA ANALYSIS --
-- Answer the questions --

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees."Emp_No", employees."Last_Name", employees."First_Name", employees."Sex", salaries."Salary"
FROM employees
LEFT JOIN salaries ON employees."Emp_No" = salaries."Emp_No"
Order by "Emp_No";

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
Select employees."First_Name", employees."Last_Name", employees."Hire_Date"
From employees 
Where "Hire_Date" Between '1986-01-01' AND '1986-12-31'
Order by "Hire_Date";

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager."Dept_No", departments."Dept_Name", dept_manager."Emp_No", employees."Last_Name", employees."First_Name"
FROM dept_manager
Inner JOIN departments On dept_manager."Dept_No" = departments."Dept_No"
Inner join employees On dept_manager."Emp_No" = employees."Emp_No"

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp."Dept_No", departments."Dept_Name", dept_emp."Emp_No", employees."Last_Name", employees."First_Name"
FROM dept_emp
Inner JOIN departments On dept_emp."Dept_No" = departments."Dept_No"
Inner join employees On dept_emp."Emp_No" = employees."Emp_No"

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employees."First_Name", employees."Last_Name", employees."Sex"
FROM employees
Where "First_Name" = 'Hercules' and "Last_Name" Like 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dept_emp."Dept_No", departments."Dept_Name", dept_emp."Emp_No", employees."Last_Name", employees."First_Name"
FROM dept_emp
Inner JOIN departments On dept_emp."Dept_No" = departments."Dept_No"
Inner join employees On dept_emp."Emp_No" = employees."Emp_No"
where "Dept_Name" = 'Sales'

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp."Dept_No", departments."Dept_Name", dept_emp."Emp_No", employees."Last_Name", employees."First_Name"
FROM dept_emp
Inner JOIN departments On dept_emp."Dept_No" = departments."Dept_No"
Inner join employees On dept_emp."Emp_No" = employees."Emp_No"
where "Dept_Name" = 'Sales' 
		or "Dept_Name" = 'Development'
Order by "Dept_Name"

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select employees."Last_Name", Count("Last_Name") as "LN"
From employees
Group by employees."Last_Name"
Order by "LN" Desc




