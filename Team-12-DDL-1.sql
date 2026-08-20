
-- WARNING: This schema is for context only and is not meant to be run.
-- Table order and constraints may not be valid for execution.

CREATE TABLE public.Deaths_complications (
  facility_id text,
  facility_name text,
  address text,
  city_town text,
  state text,
  zip_code bigint,
  county_parish text,
  telephone_number text,
  measure_id text,
  measure_name text,
  compared_to_national text,
  denominator text,
  score text,
  lower_estimate text,
  higher_estimate text,
  footnote text,
  start_date text,
  end_date text,
  id uuid,
  CONSTRAINT Deaths_complications_pkey PRIMARY KEY (id),
  CONSTRAINT Deaths_complications_facility_fk FOREIGN KEY (facility_id) REFERENCES public.facilities(facility_id),
  CONSTRAINT Deaths_complications_measure_fk FOREIGN KEY (measure_id) REFERENCES public.measures(measure_id)
);
CREATE TABLE public.HCA_Infections (
  facility_id text,
  facility_name text,
  address text,
  city_town text,
  state text,
  zip_code bigint,
  county_parish text,
  telephone_number text,
  measure_id text,
  measure_name text,
  compared_to_national text,
  score text,
  footnote text,
  start_date text,
  end_date text,
  id uuid,
  CONSTRAINT HCA_Infections_pkey PRIMARY KEY (id),
  CONSTRAINT HCA_Infections_measure_fk FOREIGN KEY (measure_id) REFERENCES public.measures(measure_id),
  CONSTRAINT HCA_Infections_facility_fk FOREIGN KEY (facility_id) REFERENCES public.facilities(facility_id)
);
CREATE TABLE public.Hospital_General_Information (
  facility_id text,
  facility_name text,
  address text,
  city_town text,
  state text,
  zip_code bigint,
  county_parish text,
  telephone_number text,
  hospital_type text,
  hospital_ownership text,
  emergency_services text,
  meets_criteria_for_birthing_friendly_designation text,
  hospital_overall_rating text,
  hospital_overall_rating_footnote text,
  mort_group_measure_count text,
  count_of_facility_mort_measures text,
  count_of_mort_measures_better text,
  count_of_mort_measures_no_different text,
  count_of_mort_measures_worse text,
  mort_group_footnote text,
  safety_group_measure_count text,
  count_of_facility_safety_measures text,
  count_of_safety_measures_better text,
  count_of_safety_measures_no_different text,
  count_of_safety_measures_worse text,
  safety_group_footnote text,
  readm_group_measure_count text,
  count_of_facility_readm_measures text,
  count_of_readm_measures_better text,
  count_of_readm_measures_no_different text,
  count_of_readm_measures_worse text,
  readm_group_footnote text,
  pt_exp_group_measure_count text,
  count_of_facility_pt_exp_measures text,
  pt_exp_group_footnote text,
  te_group_measure_count text,
  count_of_facility_te_measures text,
  te_group_footnote text,
  id uuid,
  CONSTRAINT Hospital_General_Information_pkey PRIMARY KEY (id),
  CONSTRAINT Hospital_General_Information_facility_fk FOREIGN KEY (facility_id) REFERENCES public.facilities(facility_id)
);
create TABLE public.Unplanned_visits (
  facility_id text,
  facility_name text,
  address text,
  city_town text,
  state text,
  zip_code bigint,
  county_parish text,
  telephone_number text,
  measure_id text,
  measure_name text,
  compared_to_national text,
  denominator text,
  score text,
  lower_estimate text,
  higher_estimate text,
  number_of_patients text,
  number_of_patients_returned text,
  footnote text,
  start_date text,
  end_date text,
  id uuid,
  CONSTRAINT Unplanned_visits_pkey PRIMARY KEY (id),
  CONSTRAINT Unplanned_visits_facility_fk FOREIGN KEY (facility_id) REFERENCES public.facilities(facility_id),
  CONSTRAINT Unplanned_visits_measure_fk FOREIGN KEY (measure_id) REFERENCES public.measures(measure_id)
);
CREATE TABLE public.facilities (
  facility_id text NOT NULL,
  facility_name text NOT NULL,
  address text,
  city_town text,
  state text,
  zip_code bigint,
  county_parish text,
  telephone_number text,
  CONSTRAINT facilities_pkey PRIMARY KEY (facility_id)
);
CREATE TABLE public.hcahps (
  cms_certificate text,
  facility_name text,
  state character,
  profit_or_non_profit text,
  chain_owner text,
  chain_organization text,
  star_rating numeric,
  id uuid,
  CONSTRAINT hcahps_pkey PRIMARY KEY (id)
);
CREATE TABLE public.honor_roll (
  hospital_name text NOT NULL,
  hospital_rank integer NOT NULL,
  id uuid,
  CONSTRAINT honor_roll_pkey PRIMARY KEY (id)
);
CREATE TABLE public.measures (
  measure_id text NOT NULL,
  measure_name text,
  compared_to_national text,
  denominator text,
  CONSTRAINT measures_pkey PRIMARY KEY (measure_id)
);
CREATE TABLE public.specialty_scores (
  specialty_procedure text NOT NULL,
  patient_outcomes_experience_pct numeric,
  processes_of_care_resources_pct numeric,
  professional_recognition_pct numeric,
  id uuid ,
  CONSTRAINT specialty_scores_pkey PRIMARY KEY (id)
);

ALTER TABLE public.hcahps
ALTER COLUMN state TYPE text;