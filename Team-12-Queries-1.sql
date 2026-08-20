-- =====================================================
-- QUERY 1
-- What it does:
-- Shows all unplanned visit measures and scores
-- for Gulf Coast Medical Center.
-- =====================================================
SELECT
    facility_name,
    measure_name,
    score,
    compared_to_national
FROM public.Unplanned_visits
WHERE facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH';


-- =====================================================
-- QUERY 2
-- What it does:
-- Finds only the measures where Gulf Coast is performing
-- worse than the national average.
-- =====================================================
SELECT
    facility_name,
    measure_name,
    compared_to_national,
    score
FROM public.Unplanned_visits
WHERE facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH'
  AND (
    compared_to_national ILIKE '%worse%'
    OR compared_to_national ILIKE '%more days%'
  );


-- =====================================================
-- QUERY 3
-- What it does:
-- Ranks Gulf Coast against all Florida hospitals
-- based on average unplanned visit score.
-- Higher rank = worse performance.
-- =====================================================
SELECT *
FROM (
    SELECT
        facility_name,
        AVG(CAST(score AS NUMERIC)) AS avg_score,
        RANK() OVER (ORDER BY AVG(CAST(score AS NUMERIC)) DESC) AS rank
    FROM public.Unplanned_visits
    WHERE state = 'FL'
      AND score ~ '^[0-9]+(\.[0-9]+)?$'
    GROUP BY facility_name
) ranked
WHERE facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH';


-- =====================================================
-- QUERY 4
-- What it does:
-- Compares Gulf Coast's score to the Florida average
-- for each measure and shows the difference.
-- Positive = worse than FL average
-- Negative = better than FL average
-- =====================================================
SELECT
    gc.measure_name,
    AVG(CAST(gc.score AS NUMERIC)) AS gulf_coast_avg,
    fl.avg_florida_score,
    AVG(CAST(gc.score AS NUMERIC)) - fl.avg_florida_score AS score_difference
FROM public.Unplanned_visits gc
JOIN (
    SELECT
        measure_name,
        AVG(CAST(score AS NUMERIC)) AS avg_florida_score
    FROM public.Unplanned_visits
    WHERE state = 'FL'
      AND score ~ '^[0-9]+(\.[0-9]+)?$'
    GROUP BY measure_name
) fl
ON gc.measure_name = fl.measure_name
WHERE gc.facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH'
  AND gc.score ~ '^[0-9]+(\.[0-9]+)?$'
GROUP BY gc.measure_name, fl.avg_florida_score
ORDER BY score_difference DESC;


-- =====================================================
-- QUERY 5
-- What it does:
-- Shows detailed stats for each measure including:
-- score, confidence interval (lower & upper),
-- national comparison, and patient count.
-- =====================================================
SELECT
    measure_name,
    CAST(score AS NUMERIC) AS gulf_coast_score,
    CAST(lower_estimate AS NUMERIC) AS lower_est,
    CAST(higher_estimate AS NUMERIC) AS higher_est,
    compared_to_national,
    number_of_patients
FROM public.Unplanned_visits
WHERE facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH'
  AND score ~ '^[0-9]+(\.[0-9]+)?$'
ORDER BY CAST(score AS NUMERIC) DESC;

-- QUERY 6: All measures sorted by score
-- Business Question: List all measure names and their scores for Gulf Coast, sorted from highest to lowest.

SELECT f.facility_name,
       uv.measure_name,
       uv.score,
       uv.compared_to_national
FROM unplanned_visits uv
JOIN facilities f ON f.facility_id = uv.facility_id
WHERE f.facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH'
  AND uv.score ~ '^[0-9]+(\.[0-9]+)?$'
ORDER BY CAST(uv.score AS NUMERIC) DESC;


-- QUERY 7: Measures worse than national
-- Business Question: Which unplanned visit measures is Gulf Coast performing worse than the national average?

SELECT f.facility_name,
       uv.measure_name,
       uv.compared_to_national,
       uv.score
FROM unplanned_visits uv
JOIN facilities f ON f.facility_id = uv.facility_id
WHERE f.facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH'
  AND (
    uv.compared_to_national ILIKE '%worse%'
    OR uv.compared_to_national ILIKE '%more days%'
  );


-- QUERY 8: Average score across all Florida hospitals
-- Business Question: How does Gulf Coast rank among all Florida hospitals based on average unplanned visit score?

SELECT *
FROM (
    SELECT f.facility_name,
           AVG(CAST(uv.score AS NUMERIC)) AS avg_score,
           RANK() OVER (ORDER BY AVG(CAST(uv.score AS NUMERIC)) DESC) AS rank
    FROM unplanned_visits uv
    JOIN facilities f ON f.facility_id = uv.facility_id
    WHERE f.state = 'FL'
      AND uv.score ~ '^[0-9]+(\.[0-9]+)?$'
    GROUP BY f.facility_name
) ranked
WHERE facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH';


-- QUERY 9: Count of measures by national comparison
-- Business Question: Count how many measures are better, worse, or no different than national benchmarks.

SELECT uv.compared_to_national,
       COUNT(*) AS measure_count
FROM unplanned_visits uv
JOIN facilities f ON f.facility_id = uv.facility_id
WHERE f.facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH'
GROUP BY uv.compared_to_national;


-- QUERY 10: Scores with confidence intervals
-- Business Question: What are Gulf Coast's individual scores and confidence intervals for each unplanned visit measure?

SELECT uv.measure_name,
       CAST(uv.score AS NUMERIC)           AS gulf_coast_score,
       CAST(uv.lower_estimate AS NUMERIC)  AS lower_est,
       CAST(uv.higher_estimate AS NUMERIC) AS higher_est,
       uv.compared_to_national,
       uv.number_of_patients
FROM unplanned_visits uv
JOIN facilities f ON f.facility_id = uv.facility_id
WHERE f.facility_name = 'GULF COAST MEDICAL CENTER LEE HEALTH'
  AND uv.score ~ '^[0-9]+(\.[0-9]+)?$'
ORDER BY CAST(uv.score AS NUMERIC) DESC;
