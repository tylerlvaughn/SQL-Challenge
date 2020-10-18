-- Create tables for departments, department employees, department mangers, employees, salaries, and titles.

CREATE TABLE "departments" (
    "dept_no" VARCHAR (9) NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR NOT NULL
);

-- SELECT * FROM departments

CREATE TABLE "employees" (
    "emp_no" INTEGER NOT NULL PRIMARY KEY,
	"emp_title_id" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL
);

-- SELECT * FROM employees

CREATE TABLE "salaries" (
    "emp_no" INTEGER NOT NULL PRIMARY KEY,
    "salary" INTEGER NOT NULL,
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);

-- SELECT * FROM salaries

CREATE TABLE "titles" (
    "emp_title_id" VARCHAR NOT NULL PRIMARY KEY,
    "title" VARCHAR NOT NULL
);

-- SELECT * FROM titles


CREATE TABLE "dept_emp" (
	"emp_no" INTEGER NOT NULL,
    "dept_no" VARCHAR NOT NULL,
    PRIMARY KEY ("emp_no","dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

-- SELECT * FROM dept_emp

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INTEGER NOT NULL,
    PRIMARY KEY ("dept_no","emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

-- SELECT * FROM dept_manager


