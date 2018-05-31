CREATING TABLES
---------------
The CREATE TABLE statement follows SQL conventions, but Hive’s version offers significant extensions to support a wide range of flexibility where the data files for tables are stored, the formats used, etc.

create table if not exists emp_details
(
emp_name string,
unit string,
exp int,
location string
)
row format delimited
fields terminated by ',';

DESCRIBE emp_details;
DESCRIBE FORMATTED emp_details;

SHOW TABLES LIKE '*emp*';
DROP TABLE IF EXISTS emp_details;

ALTERING TABLES
---------------

Renaming a Table
ALTER TABLE emp_details RENAME TO employee_details;

SHOW TABLES LIKE '*emp*';

Changing Columns
ALTER TABLE emp_details
CHANGE COLUMN emp_name emp_name STRING
COMMENT 'Employee Name'
AFTER unit;
DESCRIBE FORMATTED emp_details;
