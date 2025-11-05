--Find all patients who are older than 60 years.
Select * From patients 
Where age > 60; 

--Retrieve all staff members who work in the 'Emergency' service.
Select * From staff 
where service = 'emergency';

--List all weeks where more than 100 patients requested admission in any service.
Select Distinct week 
From services_weekly 
where patients_request >100;

--Question: Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.
Select patient_id, 
		name, 
		age, 
		satisfaction
From 
	patients
Where
	services = 'surgery'
AND satisfaction < 70; 