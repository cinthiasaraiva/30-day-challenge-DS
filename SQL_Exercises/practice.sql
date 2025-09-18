-- ==========================================================
-- SQL Practice File (SQLite)
-- Run with: sqlite3 practice.db
-- Then inside: .read practice.sql
-- ==========================================================

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  name TEXT,
  dept TEXT,
  salary INTEGER,
  hire_date TEXT,   -- YYYY-MM-DD format
  active INTEGER    -- 1 = active, 0 = not active
);

INSERT INTO employees (id, name, dept, salary, hire_date, active) VALUES
(1, 'Alice',   'Sales',       70000, '2019-06-12', 1),
(2, 'Bob',     'Engineering', 90000, '2018-02-01', 1),
(3, 'Carol',   'Sales',       65000, '2020-09-25', 0),
(4, 'Dan',     'Marketing',   72000, '2021-01-10', 1),
(5, 'Eve',     'Engineering', 98000, '2017-11-15', 1),
(6, 'Frank',   'Support',     48000, '2022-07-02', 1),
(7, 'Grace',   'Sales',       69000, '2019-12-20', 1),
(8, 'Heidi',   'Engineering', 54000, NULL,        0);

-- ==========================================================
-- PRACTICE QUERIES
-- Try to write them yourself before revealing the answer.
-- ==========================================================

-- 1. List all employee names and departments, sorted by name
-- SELECT name, dept FROM employees ORDER BY name ASC;

-- 2. Show Sales employees ordered by salary descending
-- SELECT name, salary FROM employees
-- WHERE dept = 'Sales'
-- ORDER BY salary DESC;

-- 3. Employees hired after 2019-01-01, by earliest hire_date first
-- SELECT id, name, hire_date FROM employees
-- WHERE hire_date > '2019-01-01'
-- ORDER BY hire_date ASC;

-- 4. Top 3 highest paid employees
-- SELECT name, salary FROM employees
-- ORDER BY salary DESC
-- LIMIT 3;

-- 5. Active employees whose name contains "a" (case-insensitive)
-- SELECT name, dept FROM employees
-- WHERE active = 1 AND LOWER(name) LIKE '%a%'
-- ORDER BY name;

-- 6. Count employees per department, sorted by count descending
-- SELECT dept, COUNT(*) AS cnt
-- FROM employees
-- GROUP BY dept
-- ORDER BY cnt DESC;

-- 7. Employees with NULL hire_date
-- SELECT id, name, hire_date FROM employees
-- WHERE hire_date IS NULL;

-- 8. Label employees: Senior if salary > 90000, else Staff
-- SELECT name, salary,
--        CASE WHEN salary > 90000 THEN 'Senior' ELSE 'Staff' END AS rank
-- FROM employees
-- ORDER BY rank DESC, salary DESC;

