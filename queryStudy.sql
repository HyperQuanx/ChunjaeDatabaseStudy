# 상품 정보 등록
INSERT INTO tbl_goods_info( goods_code, goods_name, unit_code, unit_price, goods_status, reg_date )
VALUES
('PN0001', '연필', '01', 1000, 'Y', '2024-07-01 00:00:00')
, ('PN0002', '샤프', '02', 2000, 'Y', '2024-07-02 00:00:00')
, ('ER0001', '지우개', '03', 3000, 'Y', '2024-07-03 00:00:00')
, ('PN0003', '볼펜', '04', 4000, 'Y', '2024-07-04 00:00:00')
, ('NT0001', '무지노트', '05', 1000, 'Y', '2024-07-05 00:00:00')
, ('NT0002', '연습장', '06', 1500, 'Y', '2024-07-06 00:00:00')
, ('PN0004', '볼펜심', '07', 500, 'Y', '2024-07-07 00:00:00')
, ('ER0002', '수정액', '08', 2500, 'Y', '2024-07-08 00:00:00')
;
SELECT * FROM tbl_goods_info;






11:26
INSERT INTO tbl_order_detail_info
( order_no, goods_code, unit_code, unit_price, order_cnt, order_amount, reg_date)
VALUES
	( '202408010001', 'PN0001', '01', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -7 DAY) )
	, ( '202408010001', 'PN0002', '02', 2000, 1, 2000, DATE_ADD(NOW(), INTERVAL -6 DAY) )
	, ( '202408010001', 'PN0003', '04', 4000, 1, 4000, DATE_ADD(NOW(), INTERVAL -6 DAY) )
	, ( '202408010002', 'PN0001', '01', 1000, 2, 2000, DATE_ADD(NOW(), INTERVAL -5 DAY) )
	, ( '202408020001', 'ER0001', '03', 3000, 2, 6000, DATE_ADD(NOW(), INTERVAL -4 DAY) )
	, ( '202408020002', 'NT0002', '06', 1500, 1, 1500, DATE_ADD(NOW(), INTERVAL -4 DAY) )
	, ( '202408020003', 'PN0004', '07', 500, 2, 1000, DATE_ADD(NOW(), INTERVAL -3 DAY) )
	, ( '202408020003', 'ER0002', '08', 2500, 1, 2500, DATE_ADD(NOW(), INTERVAL -3 DAY) )
	, ( '202408040001', 'NT0001', '05', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'PN0002', '02', 2000, 1, 2000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'ER0001', '03', 3000, 1, 3000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'PN0003', '04', 4000, 1, 4000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'NT0002', '06', 1500, 1, 1500, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050002', 'PN0001', '01', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050002', 'ER0002', '08', 2500, 2, 5000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408060001', 'PN0001', '01', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -1 DAY) )
	, ( '202408060001', 'PN0002', '02', 2000, 2, 4000, DATE_ADD(NOW(), INTERVAL -1 DAY) )
	, ( '202408060001', 'PN0003', '04', 4000, 2, 8000, DATE_ADD(NOW(), INTERVAL -1 DAY) )
	, ( '202408070001', 'NT0002', '06', 1500, 1, 1500, DATE_ADD(NOW(), INTERVAL -1 DAY) )
11:27
# 주문 정보 등록
INSERT INTO tbl_order_info (order_no, user_id, order_date, order_amount, reg_date)
VALUES ( '202408010001', 'user1', '20240801', 3, DATE_ADD(NOW(), INTERVAL -6 DAY) )
		, ( '202408010002', 'user2', '20240801', 2, DATE_ADD(NOW(), INTERVAL -6 DAY) )
		, ( '202408020001', 'user3', '20240802', 2, DATE_ADD(NOW(), INTERVAL -5 DAY) )
		, ( '202408020002', 'user1', '20240802', 1, DATE_ADD(NOW(), INTERVAL -5 DAY) )
		, ( '202408020003', 'user3', '20240802', 3, DATE_ADD(NOW(), INTERVAL -5 DAY) )
		, ( '202408030001', 'user3', '20240803', 2, DATE_ADD(NOW(), INTERVAL -4 DAY) )
		, ( '202408040001', 'user1', '20240804', 1, DATE_ADD(NOW(), INTERVAL -3 DAY) )
		, ( '202408050001', 'user2', '20240805', 4, DATE_ADD(NOW(), INTERVAL -2 DAY) )
		, ( '202408050002', 'user1', '20240805', 3, DATE_ADD(NOW(), INTERVAL -2 DAY) )
		, ( '202408060001', 'user3', '20240806', 5, DATE_ADD(NOW(), INTERVAL -1 DAY) )
		, ( '202408070001', 'user1', '20240807', 1, NOW() );
11:32
INSERT INTO tbl_member ( user_id, user_name, pwd ) VALUES ( 'user1', '홍길동', '1234' );
INSERT INTO tbl_member (
	`user_id`, `user_name`, `pwd`, `ssn`, `birth_date`
	, `addr1`, `addr2`, `zip_code`
	, `job_code`, `mileage`, `status`, `reg_date`, `leave_date`, `auto_login` )
VALUES (
	'user2', '홍길동2', '1234', '123456-1234567', '20240807'
	, '서울시 강남구 논현동', '37번길(레미안)', '12345', '', 0, 'P', NOW(), null, 'Y' );
INSERT INTO tbl_member (
	`user_id`, `user_name`, `pwd`, `ssn`, `birth_date`
	, `addr1`, `addr2`, `zip_code`
	, `job_code`, `mileage`, `status`, `reg_date`, `leave_date`, `auto_login` )
VALUES (
	'user3', '홍길순', '1234', '234567-3456789', '20240707'
	, '서울시 강서구 논현동', '17번길(자이)', '123-456', '', 0, 'Y', NOW(), null, 'Y' );
11:35
DELETE FROM tbl_order_detail_info;
DELETE FROM tbl_order_info;
DELETE FROM tbl_goods_info;
DELETE FROM tbl_member;
INSERT INTO tbl_member ( user_id, user_name, pwd ) VALUES ( 'user1', '홍길동', '1234' );
INSERT INTO tbl_member (
	`user_id`, `user_name`, `pwd`, `ssn`, `birth_date`
	, `addr1`, `addr2`, `zip_code`
	, `job_code`, `mileage`, `status`, `reg_date`, `leave_date`, `auto_login` )
VALUES (
	'user2', '홍길동2', '1234', '123456-1234567', '20240807'
	, '서울시 강남구 논현동', '37번길(레미안)', '12345', '', 0, 'P', NOW(), null, 'Y' );
INSERT INTO tbl_member (
	`user_id`, `user_name`, `pwd`, `ssn`, `birth_date`
	, `addr1`, `addr2`, `zip_code`
	, `job_code`, `mileage`, `status`, `reg_date`, `leave_date`, `auto_login` )
VALUES (
	'user3', '홍길순', '1234', '234567-3456789', '20240707'
	, '서울시 강서구 논현동', '17번길(자이)', '123-456', '', 0, 'Y', NOW(), null, 'Y' );
# 상품 정보 등록
INSERT INTO tbl_goods_info( goods_code, goods_name, unit_code, unit_price, goods_status, reg_date )
VALUES
('PN0001', '연필', '01', 1000, 'Y', '2024-07-01 00:00:00')
, ('PN0002', '샤프', '02', 2000, 'Y', '2024-07-02 00:00:00')
, ('ER0001', '지우개', '03', 3000, 'Y', '2024-07-03 00:00:00')
, ('PN0003', '볼펜', '04', 4000, 'Y', '2024-07-04 00:00:00')
, ('NT0001', '무지노트', '05', 1000, 'Y', '2024-07-05 00:00:00')
, ('NT0002', '연습장', '06', 1500, 'Y', '2024-07-06 00:00:00')
, ('PN0004', '볼펜심', '07', 500, 'Y', '2024-07-07 00:00:00')
, ('ER0002', '수정액', '08', 2500, 'Y', '2024-07-08 00:00:00')
;
#SELECT * FROM tbl_goods_info;
# 주문 정보 등록
INSERT INTO tbl_order_info (order_no, user_id, order_date, order_amount, reg_date)
VALUES ( '202408010001', 'user1', '20240801', 3, DATE_ADD(NOW(), INTERVAL -6 DAY) )
		, ( '202408010002', 'user2', '20240801', 2, DATE_ADD(NOW(), INTERVAL -6 DAY) )
		, ( '202408020001', 'user3', '20240802', 2, DATE_ADD(NOW(), INTERVAL -5 DAY) )
		, ( '202408020002', 'user1', '20240802', 1, DATE_ADD(NOW(), INTERVAL -5 DAY) )
		, ( '202408020003', 'user3', '20240802', 3, DATE_ADD(NOW(), INTERVAL -5 DAY) )
		, ( '202408030001', 'user3', '20240803', 2, DATE_ADD(NOW(), INTERVAL -4 DAY) )
		, ( '202408040001', 'user1', '20240804', 1, DATE_ADD(NOW(), INTERVAL -3 DAY) )
		, ( '202408050001', 'user2', '20240805', 4, DATE_ADD(NOW(), INTERVAL -2 DAY) )
		, ( '202408050002', 'user1', '20240805', 3, DATE_ADD(NOW(), INTERVAL -2 DAY) )
		, ( '202408060001', 'user3', '20240806', 5, DATE_ADD(NOW(), INTERVAL -1 DAY) )
		, ( '202408070001', 'user1', '20240807', 1, NOW() );
#SELECT * FROM tbl_order_info;
# 주문 상세 정보 등록
# TRUNCATE TABLE tbl_order_detail_info;
# SELECT * FROM tbl_order_detail_info;
INSERT INTO tbl_order_detail_info
( order_no, goods_code, unit_code, unit_price, order_cnt, order_amount, reg_date)
VALUES
	( '202408010001', 'PN0001', '01', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -7 DAY) )
	, ( '202408010001', 'PN0002', '02', 2000, 1, 2000, DATE_ADD(NOW(), INTERVAL -6 DAY) )
	, ( '202408010001', 'PN0003', '04', 4000, 1, 4000, DATE_ADD(NOW(), INTERVAL -6 DAY) )
	, ( '202408010002', 'PN0001', '01', 1000, 2, 2000, DATE_ADD(NOW(), INTERVAL -5 DAY) )
	, ( '202408020001', 'ER0001', '03', 3000, 2, 6000, DATE_ADD(NOW(), INTERVAL -4 DAY) )
	, ( '202408020002', 'NT0002', '06', 1500, 1, 1500, DATE_ADD(NOW(), INTERVAL -4 DAY) )
	, ( '202408020003', 'PN0004', '07', 500, 2, 1000, DATE_ADD(NOW(), INTERVAL -3 DAY) )
	, ( '202408020003', 'ER0002', '08', 2500, 1, 2500, DATE_ADD(NOW(), INTERVAL -3 DAY) )
	, ( '202408040001', 'NT0001', '05', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'PN0002', '02', 2000, 1, 2000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'ER0001', '03', 3000, 1, 3000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'PN0003', '04', 4000, 1, 4000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050001', 'NT0002', '06', 1500, 1, 1500, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050002', 'PN0001', '01', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408050002', 'ER0002', '08', 2500, 2, 5000, DATE_ADD(NOW(), INTERVAL -2 DAY) )
	, ( '202408060001', 'PN0001', '01', 1000, 1, 1000, DATE_ADD(NOW(), INTERVAL -1 DAY) )
	, ( '202408060001', 'PN0002', '02', 2000, 2, 4000, DATE_ADD(NOW(), INTERVAL -1 DAY) )
	, ( '202408060001', 'PN0003', '04', 4000, 2, 8000, DATE_ADD(NOW(), INTERVAL -1 DAY) )
	, ( '202408070001', 'NT0002', '06', 1500, 1, 1500, DATE_ADD(NOW(), INTERVAL -1 DAY) ) 
 
 
 
 
 
 
 
 
               
/*             
               
UTF8MB4_GENERAL_CI 쓰고 한글 정렬 쓰고 싶으면 다른거 쓰기
               
*/             
               
               
CREATE TABLE 테명 (
	내용,       
	내용,       
	내용,       
	내용,       
	,,,,        
	);          
	            
/* 테이블 생성 */
	            
       
CREATE TABLE tbl_study (
	`idx` INT NULL AUTO_INCREMENT COMMENT '인덱스',
	`title` VARCHAR(10) NOT NULL COMMENT '글제목',
	`title_no` VARCHAR(10) NULL DEFAULT NULL COMMENT '글번호',
	COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY(le_no`) USING BTREE,
	)           
COMMENT='테스트'
COLLATE='utf8mb4_general_ci'
ENGINE=INNODB  
;              
               	            
	            
	            
	            
               
               
CREATE TABLE tbl_test (
	`idx` INT NOLL AUTO_INCREMENT COMMENT '인덱스',
	`title` VARC10) NOT NULL COMMENT '글제목',
	`title_no` VAR(10) NULL DEFAULT NULL COMMENT '글번호' COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY(le_no`) USING BTREE,
	INDEX `idx` x`) USING BTREE
	)           
COMMENT='테스트'
COLLATE='utf8mb4_general_ci'
ENGINE=INNODB  
;              
               
DESC tbl_test; 
               
/* 이거 시험 나테이블 조회*/
               
               
INSERT INTO 테(컬럼명, ,,,,,)
VALUE (값1, 값2,,,,);
               
/* 데이터를 등 */
               
               
               
# 데이터 조회  
1) SELECT 컬럼12,,, FROM 테이블명
2) SELECT * FROM 테이블명
               
WHERE 컬럼1 < 1
LIMIT 0, 10    
               
               
SELECT * FROM tbl_order_detail_info;
               
               
               
INSERT INTO tbl_order_detail_info (order_no, goods_code, unit_code, unit_price, order_cnt, order_amount, reg_date)
VALUES ('20240801003', 'PN0001', '00', 1000, 1, 1000, NOW()),
('20240801003', 'PN0001', '01', 1000, 1, 1000, NOW()),
('20240801012', 'PN0002', '02', 2000, 1, 2000, NOW()),
('20240801052', 'PN0003', '03', 3000, 2, 3000, NOW()),
('20240802001', 'PN0004', '04', 2500, 3, 2500, NOW()),
('20240802002', 'PN0005', '05', 1500, 1, 1500, NOW()),
('20240802005', 'PN0006', '06', 4000, 2, 4000, NOW()),
('20240802006', 'PN0007', '07', 3500, 4, 3500, NOW()),
('20240803001', 'PN0008', '08', 2000, 2, 2000, NOW()),
('20240803007', 'PN0009', '09', 500, 3, 500, NOW())
;              
               
               
DESC tbl_order_detail_info;
               
SELECT order_amount FROM tbl_order_detail_info WHERE goods_code = 'PN0001';
               
SELECT * FROM tbl_order_detail_info
WHERE goods_code = 'PN0001';
               
               
SELECT *       
FROM tbl_order_detail_info
WHERE order_amount >= 1000 AND order_amount < 2000
;              
               
               
# 데이터 변경하
UPDATE 테이블명1=값1, 컬럼명=값2
WHERE 조건문   
               
               
               
# TRANSACTION => 등록, 수정, 삭제 시 데이터 정합성을 위하여 사용, 특징 ACID
               
start TRANSACTION;
               
UPDATE tbl_order_detail_info SET unit_code = '11'
SELECT * FROM tbl_order_detail_info;
               
               
COMMIT TRANSACTION;
               
               
               
ROLLBACK TRANSACTION;
               
SELECT * FROM tbl_order_detail_info;
               
               
               
# 데이터 삭제하
DELETE FROM 테WHERE 조건절
               
START TRANSACTION;
               
SELECT * FROM tbl_order_detail_info;
DELETE FROM tbl_order_detail_info;
SELECT *FROM tbl_order_detail_info;
               
DELETE FROM tbl_order_detail_info WHERE idx = 1 ORDER BY idx ASC LIMIT 2;
               
DESC tbl_order_detail_info;
               
SELECT * FROM tbl_order_detail_info;
let arr = [    
[20240801001, PN0001],
[20240801001, PN0001],
[20240801001, PN0001],
[20240801001, PN0001],
[20240801001, PN0001],
[20240801001, PN0001],
[20240801001, PN0001]
]              
               
               
# 집계 함수의  
SELECT 그룹핑할한 컬럼 기준 계산할 컬럼(집계함수)
FROM 테이블명  
WHERE 조건절   
GROUP BY 그룹핑
               
               
# 이 구조 외우 
SELECT goods_code, SUM(order_amount) AS total_order_amount, COUNT(goods_code) AS goods_cnt
FROM tbl_order_detail_info
#WHERE         
GROUP BY goods_code
HAVING goods_cnt > 1
ORDER BY total_order_amount DESC
LIMIT 0,2      
               
SELECT * FROM tbl_order_detail_info WHERE goods_code = 'PN0002';


# 외우기
SELECT
FROM
WHERE
GROUP BY
HAVING
LIMIT



# 집계 함수 사용법
# SELECT 그룹핑할 컬럼명1, 그룹핑할 컬럼명2, 그룹핑한 컬럼기준 계산할 컬럼
# FROM 테이블명
# WHERE 조건절
# GROUP BY 그룹핑할 컬럼명1, 그룹핑할 컬럼명2,
# having group by -> 적용할 조건
# order by -> 정렬 조건
# limit -> 시작값, 가져올 갯수
-- 			가져올 갯수
-- 			시작값 offset 상위 제외 갯수






SELECT IDX AS `INDEX`
FROM tbl_order_detail_info


SELECT *
FROM tbl_member;

SELECT CONCAT(addr1, addr2) AS 'address',LEFT (reg_date, 4) AS reg_year, reg_date
FROM tbl_member
ORDER BY 'address' ASC, reg_date DESC;


SELECT CONCAT(addr1, addr2) AS 'address'
, replace(LEFT(reg_date, 10), '.',"") AS reg_dates
, LEFT(reg_date, 4) AS reg_year
, RIGHT(replace(LEFT(reg_date, 10), "~", ''), 2) AS reg_day
, MID(replace(LEFT(reg_date, 10), "~", ""), 5, 2) AS reg_month
, CAST(YEAR(reg_date) AS CHAR) AS reg_year
FROM tbl_member
ORDER BY 'address' ASC, reg_date DESC;



# 데이터를 백업받는 경우

SELECT *
INTO OUTFILE 'D:\\java7\\mariaDB\\tbl_member3.csv' CHARACTER SET utf8 
FIELDS TERMINATED  BY '||' ENCLOSED BY '"'
FROM tbl_member
;


SHOW VARIABLES LIKE 'C%';

LOAD DATA LOCAL INFILE
'D:\\java7\\mariaDB\\tbl_member4.csv'
INTO TABLE tbl_member2 FIELDS TERMINATED BY '||' ENCLOSED BY '""'



# 1. 등록일 : 년도, 월, 날짜, 시간
# 2. 상품 코드로 그룹핑하여 출력 ==> 주문번호, 상품코드
# 3. 상품 단가가 500 이상 1500 이하인 주문 내역만 출력

SELECT reg_date
FROM tbl_order_detail_info;


SELECT * FROM tbl_order_detail_info;

SELECT order_no
, goods_code
, reg_date
FROM tbl_order_detail_info;
WHERE unit_price >= 500 AND unit_price <= 1500 
GROUP BY goods_code



SELECT
replace(LEFT(reg_date, 4), ".", "") AS reg_year
# CONVERT(YEAR(reg_date), CHAR) AS reg_year
FROM tbl_order_detail_info;



SELECT order_no, COUNT(order_no) AS CNT, goods_code
FROM tbl_order_detail_info
GROUP BY goods_code
HAVING cnt=2

SELECT *
FROM tbl_order_detail_info
WHERE unit_price >= 500 AND unit_price <= 1500 

# 데이터가 많을 때는 시 분 초 까지 명시해주기

SELECT *
FROM tbl_order_detail_info
WHERE Year(reg_date) = 2024

SELECT *
FROM tbl_order_detail_info
WHERE unit_code = '02' || unit_code ='04' || unit_code='07'
# 또는
SELECT *
FROM tbl_order_detail_info
WHERE unit_code = '02' OR unit_code ='04' OR unit_code='07'
# 또는
SELECT *
FROM tbl_order_detail_info
WHERE unit_code IN ('02','04','06')

SELECT *
FROM tbl_member
WHERE addr1 LIKE '%강%'

SELECT *
FROM tbl_goods_info
WHERE goods_name LIKE '%펜%'

SELECT *
FROM tbl_goods_info
WHERE goods_code LIKE '%PN%' AND goods_code LIKE '%00%'

# 숫자는 like 검색을 하면 안된다. 느려짐.



# null 찾기 이 두 방법으로 함
SELECT *
FROM tbl_order_detail_info
WHERE modify_date IS NULL;
# 또는
SELECT *
FROM tbl_order_detail_info
WHERE modify_date IS NOT NULL;


# 변수 선언 (변수명은 반드시 @가 붙음)
SET @ADDR = '서울 강남구 논현동';
SET @TEL = '02-1234-568';
SET @ADDR2 = '서울 강북구 수유동';
SET @TEL2 = '02-420-2335';
SELECT @ADDR AS addr, @ADDR2 AS addr, @TEL AS tel, @TEL2 AS tel;




SELECT * FROM tbl_member WHERE addr1 LIKE CONCAT("'",%@ADDR%,"'");

SET @ADDR = '%서울시 강남구 논현동%';
SELECT * FROM tbl_member WHERE addr1 LIKE @ADDR;


SELECT user_id AS '아이디', user_name AS '이름', CONCAT(addr1, ' ', addr2) AS '주소'
FROM tbl_member
;


SELECT order_no FROM tbl_order_detail_info; # 중복값 출력
SELECT DISTINCT order_no FROM tbl_order_detail_info; # DISTINCT 넣으면 중복값 미출력

SELECT count(DISTINCT order_no) AS cnt1, count(order_no) AS cnt2 FROM tbl_order_detail_info;


# LIMIT 시작 인덱스, 몇 개 가져올거?
# 기본형
SELECT *
FROM tbl_order_detail_info
ORDER BY idx DESC
LIMIT 2 # 상위 두개
;

SELECT *
FROM tbl_order_detail_info
ORDER BY idx DESC
LIMIT 2, 2
;

SELECT *
FROM tbl_order_detail_info
ORDER BY idx DESC
LIMIT 2 OFFSET 5 # OFFSET
;

SELECT unit_price*order_cnt AS total_price, unit_price, order_cnt, order_amount
FROM tbl_order_detail_info

SELECT *
FROM tbl_order_detail_info
WHERE unit_code != '11'



# 기본 산술 연산자
+ : A + B
- : A - B
* = A * B
/ : A / B
DIV : A/B => 몫 반환 #MySQL에만 있음
%, MOD() : A/B ==> 나머지 반환, X = A%B, x = MOD(A,B)

= --> 값 할당 연산자
:= --> 변수에 값을 할당 

SET @a = 1, @B = 2;
SELECT @a, @b;

SET @X := 1, @Y := 2;
SELECT @X, @Y;


SELECT user_name FROM tbl_member WHERE user_id = 'user3';
SELECT @nm;
