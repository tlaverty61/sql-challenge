-- DATA ENGINEERING --
-- Create tables with relationships and import Data --


CREATE TABLE "titles" (
    "Title_ID" VARCHAR   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);
-- select * from titles;

CREATE TABLE "employees" (
    "Emp_No" INT   NOT NULL,
    "Emp_Title_ID" VARCHAR   NOT NULL,
    "Birth_Date" VARCHAR   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_Date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("Emp_No"),
	Foreign Key ("Emp_Title_ID") references titles("Title_ID")
);
-- select * from employees;

CREATE TABLE "departments" (
    "Dept_No" VARCHAR   NOT NULL,
    "Dept_Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY ("Dept_No")
);
-- select * from departments;

CREATE TABLE "dept_manager" (
    "Dept_No" VARCHAR   NOT NULL,
	"Emp_No" INT   NOT NULL,
	Foreign Key ("Emp_No") references employees("Emp_No"),
	Foreign Key ("Dept_No") references departments("Dept_No"),
	Primary Key("Dept_No", "Emp_No")
);
-- select * from dept_manager;

CREATE TABLE "dept_emp" (
    "Emp_No" INT   NOT NULL,
    "Dept_No" VARCHAR   NOT NULL,
	Foreign Key ("Emp_No") references employees("Emp_No"),
	Foreign Key ("Dept_No") references departments("Dept_No"),
	Primary Key("Emp_No", "Dept_No")
);
-- select * from dept_emp;

CREATE TABLE "salaries" (
    "Emp_No" INT   NOT NULL,
    "Salary" INT   NOT NULL,
	CONSTRAINT "pk_salaries" PRIMARY KEY ("Emp_No"),
	Foreign Key ("Emp_No") references employees("Emp_No")
);
-- select * from salaries;



