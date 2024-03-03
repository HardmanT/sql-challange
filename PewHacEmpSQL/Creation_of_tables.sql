CREATE TABLE titles (
    title_id VARCHAR(255)   NOT NULL,
    title VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE employees (
    emp_num INTEGER   NOT NULL,
    emp_title_id VARCHAR(255)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    gender VARCHAR(255)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_num
     )
);

CREATE TABLE salaries (
    id_sal SERIAL   NOT NULL,
    emp_num INTEGER   NOT NULL,
    salary DECIMAL   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_num
     )
);

CREATE TABLE departments (
    dept_num VARCHAR(255)   NOT NULL,
    dept_nam VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_num
     )
);

CREATE TABLE dept_emp (
    id_dept_emp SERIAL   NOT NULL,
    emp_num INTEGER   NOT NULL,
    dept_num VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (
        id_dept_emp
     )
);

CREATE TABLE dept_manager (
    id_dept_man SERIAL   NOT NULL,
    dept_num VARCHAR(255)   NOT NULL,
    emp_num INTEGER   NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
        id_dept_man
     )
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_num FOREIGN KEY(emp_num)
REFERENCES employees (emp_num);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_num FOREIGN KEY(dept_num)
REFERENCES departments (dept_num);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_num FOREIGN KEY(dept_num)
REFERENCES departments (dept_num);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_num FOREIGN KEY(emp_num)
REFERENCES employees (emp_num);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_num FOREIGN KEY(emp_num)
REFERENCES employees (emp_num);


SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

