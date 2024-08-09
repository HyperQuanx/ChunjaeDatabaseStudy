# 테이블 생성

CREATE TABLE 테명 (
	내용,       
	내용,       
	내용,       
	내용,       
	,,,,        
);

- 데이터 타입 정의해주기 EX) user_name VARCHAR(10)
- 기본값 필요하다면 설정해주기 EX) login BOOLEAN DEFAULT FALSE
- NOT NULL 제약 조건 : 테이블의 열이 NULL값을 가질 수 없도록 함.
	NOT NULL 제약 조건이 적용된 열에는 반드시 값이 제공되어야 함.
- 기본 키 : 테이블 내 각 행을 고유하게 식별하는 열. 하나의 테이블에는 하나의 기본키만 존재 가능.
	기본 키로 지정된 열에는 중복된 값이나 NULL값이 허용되지 않음.
	EX) PRIMARY KEY (user_name) <-- 각 이름을 고유하게 식별함.
- 외래 키 : 다른 테이블의 기본 키를 참조하는 열. 제약 조건은 참조 무결성을 유지하는 데 사용됨.
	관계형 데이터베이스에서 두 테이블 간의 관계를 정의하는 데 필요함.
	EX) FOREIGN KEY (user_no) REFERENCES UserGroup(user_no)<--  FOREIGN KEY (user_no)는 UserGroup의 user_no 기본 키 참조
- 유니크 제약 조건 : 테이블의 특정 열에서 각 행이 고유한 값을 가져야 함을 보장.
	중복 값이 없어야 하지만 NULL은 허용.
	EX) UNIQUE (user_nickname)
- INDEX 생성
	데이터 검색 속도를 빠르게 하기 위해 사용됨. 특정 열들에 대해 생성되며 해당 열을 사용하는 쿼리의 성능을 향상시킴.
	CREATE INDEX idx ON UserGroup (user_no)
- AUTO_INCREMENT 속성
	주로 기본 키에 사용됨. 새로운 행이 추가될 때마다 자동으로 고유한 숫자 생성.
	EX) Idx INT NOT NULL AUTO_INCREMENT
- ENUM, SET 데이터 타입
	ENUM : 정의된 값 목록 중 하나만 가질 수 있음.
	SET : 정의된 값 목록 중 여러 값을 동시에 가질 수 있음.
- COMMENT
	주석 추가 가능.
	데이터베이스 스키마를 문서화하는 데 유용함.
	EX) Idx INT NOT NULL AUTO_INCREMENT COMMENT '인덱스'
- ENGINE
	특정 스토리지 엔진을 지정할 수 있음.
	보편적으로 INNODB 사용.
	EX) CREATE TABLE GROUPS(.......) ENGINE=INNODB;








CREATE TABLE tbl_study (
    `idx` INT NOT NULL AUTO_INCREMENT COMMENT '인덱스',
    `study_title` VARCHAR(10) NOT NULL COMMENT '제목',
    `study_no` VARCHAR(10) NOT NULL COMMENT '번호',
    `study_price` INT NOT NULL COMMENT '가격',
    `study_cnt` VARCHAR(10) NOT NULL COMMENT '갯수',
    `study_addr1` VARCHAR(10) NOT NULL COMMENT '주소1',
    `study_addr2` VARCHAR(10) NOT NULL COMMENT '주소2',
    `study_birth` DATE NOT NULL COMMENT '생일',
    `study_time` TIME NOT NULL COMMENT '시간',
    `study_birthday` DATETIME NOT NULL COMMENT '생일상세',
    `study_language` CHAR(1) NOT NULL COMMENT '언어',
    `study_stat` BOOLEAN NOT NULL DEFAULT FALSE COMMENT '출석? DEFAULT NO',
    `study_decimal` DECIMAL(7,0) NOT NULL COMMENT 'decimal이 머징 소수인듯?',
    `study_set` SET('기분 좋음','쏘쏘','기분 나쁨') NOT NULL COMMENT 'SET 나는 철불',
    PRIMARY KEY (`idx`)
)tbl_study
COMMENT='테스트'
COLLATE='utf8mb4_general_ci'
ENGINE=INNODB
;

DESC tbl_study;


INSERT INTO tbl_study (`study_title`, `study_no`, `study_price`,  `study_cnt`, `study_addr1`, `study_addr2`, `study_birth`, `study_time`, `study_birthday`, `study_language`, `study_stat`, `study_decimal`, `study_set`)
VALUES('title1', '01', 1000, 1, '서울시 강북구 삼양로', '124길 7-12', NOW(), NOW(), NOW(), 'Database', YES, (5,5), )




























