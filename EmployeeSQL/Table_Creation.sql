CREATE TABLE Titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);

CREATE TABLE Employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id),
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date VARCHAR(20) NOT NULL
);

SELECT * FROM Employees

CREATE TABLE Departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Dept_Emp (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
);

CREATE TABLE Dept_Manager (
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Salaries (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	salary INTEGER NOT NULL
);

SELECT * FROM departments;




