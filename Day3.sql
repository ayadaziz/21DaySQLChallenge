--List all patients sorted by age in descending order.
Select * 
From patients 
Order by age Desc;

--Show all services_weekly data sorted by week number ascending and patients_request descending.
Select * 
From services_weekly
Order by week Asc, patients_request Desc;

--Display staff members sorted alphabetically by their names.
Select * 
From staff 
Order by staff_name Asc; 

--Retrieve the top 5 weeks with the highest patient refusals across all services, showing week, service, patients_refused, and patients_request. Sort by patients_refused in descending order.
SELECT week,
	   service,
	   patients_refused,
	   patients_request
FROM services_weekly
ORDER BY patients_refused DESC
LIMIT 5;