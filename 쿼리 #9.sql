USE employees;

SELECT * FROM departments



SELECT dept_no, LEFT(dept_no, 1) AS dept_char, RIGHT(dept_no, 3) AS dept_num
, CONCAT(LEFT(dept_no, 1), RIGHT(dept_no, 3)) AS full_dept
FROM departments;

SELECT * FROM titles;

SELECT title,
SUBSTRING(title, 1, 3) AS sub_title,
SUBSTRING(from_date, 1, 4) AS f_year,
SUBSTRING(to_date, 1, 4) AS t_year,
LEFT(from_date, 4) AS from_year,
RIGHT(from_date, 4) AS f_day
FROM titles
;

DESC titles;


SELECT from_date,
	SUBSTRING_INDEX(from_date, '-', 1) AS '1',
	SUBSTRING_INDEX(from_date, '-', 2) AS '2',
	SUBSTRING_INDEX(from_date, '-', 3) AS '3'
FROM salaries
LIMIT 10
;



SELECT from_date, LOCATE('06', CONVERT(from_date, CHAR)) AS lo, POSITION('06' IN from_date) AS po
FROM salaries
ORDER BY lo DESC
LIMIT 10
;




# 입력받아서 --> 데이터베이스에 값과 비교할 때
SELECT ELT(1, '월','화','수','목','금','토','일');

# 값의 인덱스를 반환
SELECT FIELD('수','월','화','수','목','금','토','일');

# 문자열의 인덱스를 반환 set 형태여야 인덱스를 제대로 가져옴
SELECT FIND_IN_SET('일', '월,화,수,목,금,토,일') AS f1, FIND_IN_SET('목', '월,화,수,목,금,토,일') AS f2;


# 소문자 바꾸는 거 두개, 대문자 바꾸는 거 두개
SELECT title AS t1, LCASE(title) AS t2, LOWER(title) AS t3, UCASE(title) AS u1, UPPER(title) AS u2
FROM titles
LIMIT 100
;


# 공백 제거는 필수 LTRIM : 왼쪽 공백 제거, RTRIM : 오른쪽 공백 제거, TRIM : 양쪽 공백 제거
SET @str = "    빈 문자 열    ";
SELECT CONCAT('|', LTRIM(@str),'|') AS lstr, CONCAT('|', RTRIM(@str),'|') AS rstr, CONCAT('|', TRIM(@str),'|') AS tstr;



SELECT * FROM employees LIMIT 10;

SELECT first_name, REPLACE(first_name, LEFT(first_name, 1), 'K') AS f_name
FROM employees;


SELECT first_name,
LENGTH(first_name) AS f_len,
CHAR_LENGTH(first_name) AS c_len,
CHARACTER_LENGTH(first_name) AS cr_len,
LENGTHB(first_name) AS lb_len
FROM employees
LIMIT 100
;



SELECT '홍길동' AS `name`,
LENGTH('홍길동') AS f_len,
CHAR_LENGTH('홍길동') AS c_len,
CHARACTER_LENGTH('홍길동') AS cr_len,
LENGTHB('홍길동') AS lb_len
;


# 글자 수에서 영문, 한글 영향을 받지 않으려면 CHAR_LENGTH를 사용.
SELECT '홍길동zxc' AS `name`,
LENGTH('홍길동zxc') AS f_len,
CHAR_LENGTH('홍길동zxc') AS c_len,
CHARACTER_LENGTH('홍길동zxc') AS cr_len,
LENGTHB('홍길동zxc') AS lb_len
;


# 많이 씀 (문자열 연결할 때)
SELECT CONCAT('문자열A', '문자열B', '문자열C') AS con;

SELECT first_name + last_name AS `name` FROM employees

SELECT CONCAT_WS('|', 'Maria', 'DB', 'DB', 'DB', 'DB') AS con;

SELECT CAST(from_date AS CHAR(4)) AS '1', CONVERT(from_date, CHAR(4)) AS '2'
FROM salaries
LIMIT 100;


SELECT first_name, last_name, CONCAT_WS('@', first_name, 'chunjae.co.kr') AS email
FROM employees
LIMIT 100
;

SELECT repeat('*', 100);

SELECT REVERSE(first_name) AS rf
FROM employees
LIMIT 100
;


# round up
SELECT FORMAT(123456.6789, 2, 'ko_KR');

SELECT ASCII('a'), CHR(65), CHR(97);

SELECT HEX('AB'), UNHEX('4142');

SELECT NOW(), to_char(NOW(), 'YYYY-MM-DD') AS '년월일', to_char(NOW(), 'yyyy') AS '년';
# 날짜 데이터는 날짜 함수를 사용해버릇 해야함.



SELECT * FROM employees WHERE hire_date <= NOW()
LIMIT 100;

SELECT *FROM employees WHERE hire_date BETWEEN "2000-01-01" AND '2010-12-31'
ORDER BY hire_date;

SELECT NOW(), ADDDATE(NOW(), 30) AS dl, to_cher(NOW(), 'yyyy-mm-dd');
SELECT ADDDATE('2024-03-01',-1) AS dy

SELECT SUBDATE(NOW(), 30) AS sd, DATE_SUB(NOW(), INTERVAL 30 DAY) AS ds,
		ADDDATE(NOW(), 30) AS ad, ADDDATE(NOW(), -30) AS ad2
;

SELECT NOW(), CURDATE(), CURRENT_DATE(), CURTIME(), CURRENT_TIME();
SELECT NOW(), CURRENT_TIMESTAMP(), SYSDATE(), localtime(), UNIX_TIMESTAMP();

SELECT to_char(NOW(), 'HH24'), to_char(NOW(), )


SHOW VARIABLES LIKE 'c%';

SELECT @@time_zone, NOW();

SET @test = NOW();
SELECT @test;

SELECT @@GLOBAL.time_zone, @@SESSION.time_zone;

SHOW VARIABLES LIKE '%time%';



USE employees;

SELECT DATE(NOW()), TIME(NOW());
# 쓸 일 많음world
SELECT DATEDIFF(NOW(), '2024-10-01'), TIMEDIFF(NOW(), '2024-12-31 00:00:00');

SELECT LAST_DAY('2022-02-01') AS '2024',
LAST_DAY('2023-03-01') AS '2024',
LAST_DAY('2024-02-01') AS '2024' 

SELECT DATE_FORMAT(NOW(), '%T', 'ko_KR'); 



SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'),
#영문 문자열을 바꿔주는 포맷
STR_TO_DATE(NOW(), '%Y-%m-%d %H:%i:%s'); 



USE employees;

SELECT *
FROM salaries LIMIT 100;



# 많이 씀
SELECT
COUNT(salary) AS cnt,
AVG(salary) AS AVG1,
CEIL(AVG(salary)) AS c1,
FLOOR(AVG(salary)) AS f1,
TRUNCATE(AVG(salary), 3) AS t1,
ROUND(AVG(salary), 1) AS r1
FROM salaries
WHERE from_date BETWEEN '2020-01-01' AND '2020-07-31';

SELECT COUNT(Year(from_date)), Year(from_date) FROM salaries GROUP BY Year(from_date);


# 아무것도 안넣으면 자동 반올림, 반내림 됨.
SELECT CONVERT((134/10), INT) as c1, CONVERT(CEIL(131/10), INT) as c2;

SELECT
MIN(salary) AS m1,
MAX(salary) AS m2
FROM salaries;



















































