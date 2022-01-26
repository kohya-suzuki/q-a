/* DB作成 */
DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb CHARACTER SET utf8 COLLATE utf8_general_ci;
 
/* ユーザを作成 */
DROP USER IF EXISTS trainee;
CREATE USER trainee IDENTIFIED BY 'password';

/* 権限付与 */
GRANT ALL PRIVILEGES ON testdb.* TO trainee;

/* AUTOCOMMIT無効 */
SET AUTOCOMMIT=0;

/* DB選択 */
USE testdb;

/* 会社マスタ作成 */
CREATE TABLE testdb.m_company
( 
    company_id   INT PRIMARY KEY,
    company_name VARCHAR(100),
    area_id      INT,
    area_name    VARCHAR(100) 
);


/* 個人情報マスタ作成 */
CREATE TABLE testdb.m_person
( 
    person_id    INT PRIMARY KEY,
    company_id   INT,
    person_lname VARCHAR(100),
    person_fname VARCHAR(100),
    post_id      INT
);

/* 役職マスタ作成 */
CREATE TABLE testdb.m_post
( 
    post_id      INT,
    post_name    VARCHAR(100)
);
ALTER TABLE testdb.m_post ADD PRIMARY KEY ( post_id );


/* 個人情報マスタINSERT */
INSERT INTO testdb.m_person VALUES(1,3,'山田','太郎',3);
INSERT INTO testdb.m_person VALUES(2,3,'鈴木','花子',2);
INSERT INTO testdb.m_person VALUES(3,2,'佐藤','一郎',1);
INSERT INTO testdb.m_person VALUES(4,6,'田中','次郎',3);
INSERT INTO testdb.m_person VALUES(5,6,'高橋','優子',3);
INSERT INTO testdb.m_person VALUES(6,7,'斉藤','桃子',1);

/* 会社マスタINSERT */
INSERT INTO testdb.m_company VALUES(1,'ABC株式会社',           1,'東京都');
INSERT INTO testdb.m_company VALUES(2,'アルファ商事',          3,'神奈川県');
INSERT INTO testdb.m_company VALUES(3,'ベータホールディングス',1,'東京都');
INSERT INTO testdb.m_company VALUES(4,'株式会社ワン',          1,'東京都');
INSERT INTO testdb.m_company VALUES(5,'株式会社ツー',          2,'大阪府');
INSERT INTO testdb.m_company VALUES(6,'株式会社スリー',        2,'大阪府');

commit;

