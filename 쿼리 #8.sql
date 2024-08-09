

START TRANSACTION;

SELECT * FROM dept_emp;
UPDATE dept_emp SET 
	from_date = ADDDATE(from_date, INTERVAL 20 YEAR),
	to_date = DATE_ADD(to_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;


UPDATE dept_emp SET 

SELECT from_date, to_date, ADDDATE(from_date, INTERVAL 10 YEAR) FROM dept_emp;

COMMIT;

ROLLBACK;


START TRANSACTION;

SELECT * FROM dept_emp;
UPDATE dept_emp SET 
	from_date = ADDDATE(from_date, INTERVAL 20 YEAR),
	to_date = DATE_ADD(to_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

UPDATE employees SET from_date = ADDDATE(from_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

COMMIT;

START TRANSACTION;

SELECT * FROM employees_comp4k;
UPDATE employees_comp4k SET 
	birth_date = ADDDATE(birth_date, INTERVAL 30 YEAR),
	hire_date = DATE_ADD(hire_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

SELECT * FROM employees_comp4k;
COMMIT;


SELECT * FROM employees_comp8k;
UPDATE employees_comp8k SET 
	birth_date = ADDDATE(birth_date, INTERVAL 30 YEAR),
	hire_date = DATE_ADD(hire_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

SELECT * FROM employees_comp8k;

COMMIT;







START TRANSACTION;

SELECT * FROM salaries;
UPDATE salaries SET 
	from_date = ADDDATE(from_date, INTERVAL 20 YEAR),
	to_date = DATE_ADD(to_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

UPDATE salaries SET from_date = ADDDATE(from_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

SELECT * FROM dept_manager;

COMMIT;

ROLLBACK;








START TRANSACTION;

SELECT * FROM titles;
UPDATE titles SET 
	from_date = ADDDATE(from_date, INTERVAL 20 YEAR),
	to_date = DATE_ADD(to_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

UPDATE titles SET from_date = ADDDATE(from_date, INTERVAL 20 YEAR)
WHERE to_date < '9999-01-01'
;

SELECT * FROM titles;

COMMIT;

ROLLBACK;