SELECT department, AVG(salary) AS avr_salary
FROM employees
GROUP BY department;

-- Bonus
SELECT e.department, highest_salary, e.name
FROM employees e
JOIN (
    SELECT department, MAX(salary) AS highest_salary
    FROM employees
    GROUP BY department
) AS e2
ON e.department = e2.department AND e.salary = e2.highest_salary;