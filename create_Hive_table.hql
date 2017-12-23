DROP DATABASE IF EXISTS stock_info CASCADE;
CREATE DATABASE stock_info;
USE stock_info;
DROP TABLE IF EXISTS stock;
CREATE EXTERNAL TABLE stock (
open_date STRING,
open DOUBLE,
high DOUBLE,
low DOUBLE,
close DOUBLE,
volume INT,
name STRING)
ROW FORMAT DELIMITED

FIELDS TERMINATED BY ','

LOCATION '/final_project';
