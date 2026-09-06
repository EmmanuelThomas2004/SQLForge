SELECT * FROM employees WHERE salary > 50000;
SELECT * FROM employees ORDER BY salary DESC;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;
SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department HAVING COUNT(*) > 2;
SELECT MAX(salary) AS second_highest_salary FROM employees WHERE salary < (SELECT MAX(salary) FROM employees);
SELECT employee_id, employee_name, department, salary FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn FROM employees) AS ranked WHERE rn <= 2;
