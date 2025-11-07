-- Count the total number of patients in the hospital.

SELECT COUNT(patient_id)
FROM patients; 

-- Calculate the average satisfaction score of all patients.

SELECT AVG(satisfaction) as avgsatificationscore
FROM patients;

-- Find the minimum and maximum age of patients.

SELECT MIN(age) as Minimum_age,
	   MAX(age) as Maximum_age
FROM patients; 

--Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.

SELECT COUNT(patients_admitted) AS num_patients, 
		SUM(patients_refused) AS total_refused,
		ROUND(AVG(patient_satisfaction), 2) as avgstaisfactionscore
FROM services_weekly; 
					
