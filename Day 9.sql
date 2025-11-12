-- Extract the year from all patient arrival dates.

SELECT 
EXTRACT(YEAR FROM arrival_date) AS yearofarrival
FROM 
patients;


-- Calculate the length of stay for each patient (departure_date - arrival_date).

SELECT
name,
patient_id,
departure_date - arrival_date AS LengthofStay
FROM
patients;

-- Find all patients who arrived in a specific month.

SELECT 
  patient_id,
  name,
  arrival_date,
  EXTRACT(MONTH FROM arrival_date) AS arrival_month
FROM 
  patients
WHERE 
  EXTRACT(MONTH FROM arrival_date) = 9;

  -- Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days. Also show the count of patients and order by average stay descending.


SELECT
COUNT(patient_id) AS numpatients, 
service,
AVG(departure_date - arrival_date) AS AVGLengthofStay
FROM
patients
GROUP BY
service 
HAVING AVG(departure_date - arrival_date) > 7
ORDER BY AVGLengthofStay DESC; 






  