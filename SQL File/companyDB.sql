CREATE DATABASE Company_DB;
USE Company_DB;

-- Task 1 Employee Table 
CREATE TABLE employee_tbl (
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL
);
DESCRIBE employee_tbl;

-- Task 2 Department Table 
CREATE TABLE departments_tbl (
	department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255)
);
DESCRIBE departments_tbl;
	
-- Task 3 Employee Departments Table 
CREATE TABLE employee_departments_tbl (
	employee_id INT,
	FOREIGN KEY (employee_id) REFERENCES employee_tbl (employee_id),
    department_id INT,
	FOREIGN KEY (department_id) REFERENCES departments_tbl (department_id)
);
DESCRIBE employee_departments_tbl;

  -- Task 4 Employee Projects Table
CREATE TABLE employee_projects_tbl (
	employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee_tbl (employee_id),
    project_name VARCHAR(255) NOT NULL
);
DESCRIBE employee_projects_tbl;

-- Task 5 Managers Table
CREATE TABLE managers_tbl (
	manager_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee_tbl (employee_id)
);
DESCRIBE managers_tbl;