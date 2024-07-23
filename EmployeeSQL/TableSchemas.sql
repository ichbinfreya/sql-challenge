-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/8kwzi2
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    CONSTRAINT PK_employees PRIMARY KEY (emp_no)
);

-- Testing employees table
SELECT * FROM employees limit(10);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    CONSTRAINT PK_salaries PRIMARY KEY (emp_no)
);

SELECT * FROM salaries limit(10);
	
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(5) NOT NULL,
    CONSTRAINT PK_dept_emp PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp limit(10);


CREATE TABLE dept_manager (
    dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
    CONSTRAINT PK_dept_manager PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_manager limit(10);

CREATE TABLE departments (
    dept_no VARCHAR(5) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    CONSTRAINT PK_departments PRIMARY KEY (dept_no)
);

SELECT * FROM departments limit(10);

CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(50) NOT NULL,
    CONSTRAINT PK_titles PRIMARY KEY (title_id)
);

SELECT * FROM titles limit(10);

ALTER TABLE employees ADD CONSTRAINT FK_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT FK_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT FK_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT FK_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT FK_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_manager ADD CONSTRAINT FK_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);
