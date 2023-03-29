CREATE DATABASE my_database;

\c my_database;

CREATE SCHEMA my_schema;

CREATE TABLE my_schema.dummy_table (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INTEGER,
  salary NUMERIC(8, 2),
  hire_date DATE
);

INSERT INTO my_schema.dummy_table (name, age, salary, hire_date)
SELECT 
  md5(random()::text), 
  cast(random()*60 as INTEGER), 
  cast(random()*100000::numeric as NUMERIC(8, 2)), 
  current_date - (interval '365' * cast(random()*20 as integer))
FROM generate_series(1,200);