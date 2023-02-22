desc mysql.user;

select user, host from mysql.user;
create user 'test'@'localhost' identified by '1234';
create user 'anywhere'@'%' identified by '1234';
select user, host from mysql.user;
create user 'test2'@'192.168.0.%' identified by '1234';
select user, host from mysql.user;
create or replace user 'test'@'localhost' identified by '1234';
select user, host from mysql.user;
rename user 'test2'@'192.168.0.%' to 'test3'@'%';
select user, host from mysql.user;
set password for 'test3'@'%'=password('12345');
drop user 'test3'@'%';
drop user if exists 'anywhere'@'%';
show grants for 'test'@'localhost';
grant all privileges on test.* to 'test'@'localhost';
show grants for 'test'@'localhost';
revoke all on test.*from 'test'@'localhost';
show grants for 'test'@'localhost';
SHOW DATABASES;
CREATE DATABASE test;
CREATE DATABASE IF NOT EXISTS test;
CREATE DATABASE `test.test`;
DROP DATABASE `test.test`;
SHOW DATABASES;
CREATE DATABASE python;
USE python;
CREATE TABLE table1 ( column1 VARCHAR(100) );
SELECT DATABASE();
SHOW TABLES;
RENAME TABLE table1 TO table2;
SHOW TABLES;
DROP TABLE table2;
CREATE TABLE test_table (
test_column1 INT,
test_column2 INT,
test_column3 INT
);
DESC test_table;
ALTER TABLE test_table
ADD test_column4 INT;

DESC test_table;
ALTER TABLE test_table
ADD (
test_column5 INT,
test_column6 INT,
test_column7 INT
);

DESC test_table;
ALTER TABLE test_table
DROP test_column1;

DESC test_table;
ALTER TABLE test_table
MODIFY test_column7 INT
FIRST;

DESC test_table;

ALTER TABLE test_table
MODIFY test_column7 INT
AFTER test_column6;

DESC test_table;
ALTER TABLE test_table
CHANGE test_column2 test_column0 INT;

DESC test_table;
ALTER TABLE test_table
CHANGE test_column0 test_column0 VARCHAR(10);
DESC test_table;

ALTER TABLE test_table
CHANGE test_column0 test_column2 INT;

DESC test_table;