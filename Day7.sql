-- Find services that have admitted more than 500 patients in total.

Select SUM(patients_admitted) AS total_patients,
			service
From services_weekly
Group By service
HAVING SUM(patients_admitted)>500;

-- Show services where average patient satisfaction is below 75.

SELECT
    service,
    AVG(patient_satisfaction) AS satisfactionscore
FROM services_weekly
GROUP BY service
HAVING AVG(patient_satisfaction) < 75;

-- List weeks where total staff presence across all services was less than 50.

SELECT service,
	   week,
	   staff_morale 
FROM services_weekly
WHERE staff_morale < 50;


-- Identify services that refused more than 100 patients in total and had an average patient satisfaction below 80. Show service name, total refused, and average satisfaction.

SELECT 
    service, 
    SUM(patients_refused) AS Refused_Admission, 
    AVG(patient_satisfaction) AS Avg_Satisfaction
FROM services_weekly
GROUP BY service
HAVING 
    SUM(patients_refused) > 100
    AND AVG(patient_satisfaction) < 80;
