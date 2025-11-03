-- Retrieve all columns from the patients table.
Select * from patients;

--Select only the patient_id, name, and age columns from the patients table.
Select patient_id,
	   name,
	   age
from patients;

--Display the first 10 records from the services_weekly table.
Select * from services_weekly limit 10;

--List all unique hospital services available in the hospital.
Select Distinct 
service AS hospital_services 
From 
services_weekly;