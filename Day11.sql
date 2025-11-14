-- Find all unique combinations of service and event type from the services_weekly table where events are not null or none, along with the count of occurrences for each combination. Order by count descending.

SELECT 
    service,
    event,
    COUNT(*) AS occurrences
FROM services_weekly
WHERE event IS NOT NULL
  AND event <> 'none'
GROUP BY service, event
ORDER BY occurrences DESC;
