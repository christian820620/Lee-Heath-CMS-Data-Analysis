--BEGIN;(testing ignore)  --
--1 Dataset 1: Deaths and Complications 
create table deaths_complications (
  facility_id text,
  facility_name text,
  state char(2),
  measure_id text,
  measure_name text,
  compared_to_national text,
  denominator integer,
  score numeric,
  lower_estimate numeric,
  high_estimate numeric
);
--Dataset 2: Readmissions 
create table readmissions (
  facility_id text,
  facility_name text,
  state char(2),
  measure_id text,
  measure_name text,
  compared_to_national text,
  denominator integer,
  score numeric,
  lower_estimate numeric,
  higher_estimate numeric,
  number_of_patients integer,
  number_of_patients_returned integer
);
--Dataset 3: HCAHPS (Patient surveys) 
create table hcahps (
  cms_certificate text,
  facility_name text,
  state char(2),
  profit_or_non_profit text,
  chain_owner text,
  chain_organization text,
  star_rating numeric
);

--Dataset 4: healthcare_infections
CREATE TABLE healthcare_associated_infections (
  facility_id TEXT NOT NULL,
  facility_name TEXT,
  state CHAR(2),

  measure_name TEXT NOT NULL,
  compared_to_national TEXT,
  score NUMERIC,
  end_date DATE
);
--Dataset 5: general_info
CREATE TABLE hospital_general_information (
  facility_id TEXT PRIMARY KEY,
  facility_name TEXT,
  state CHAR(2),

  hospital_type TEXT,
  hospital_ownership TEXT,
  emergency_services TEXT,

  hospital_overall_rating INTEGER,
  count_of_facility_safety_measures INTEGER
);

--Dataset 9 – Honor Roll Table
CREATE TABLE honor_roll (
  hospital_name TEXT PRIMARY KEY,
  hospital_rank INTEGER NOT NULL
);

--ROLLBACK;

--***************************************
--IGONORE THIS WAS DONE FOR TESTING

--SELECT table_name
--FROM information_schema.tables
--WHERE table_schema = 'public'
--ORDER BY table_name;