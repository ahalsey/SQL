SELECT DATE_ADD("2018-01-08", INTERVAL round(DATEDIFF(request_date, "2018-01-08")/7, 0) week) as weekOf
, COUNT(ticket_id) AS ticketCount 
FROM zendesk z 
WHERE true 
AND z.request_date > "2018-01-08" 
AND zgroup IN ("Engineering","Partner Support","Product Support","Application Support") 
GROUP BY weekOf 
ORDER BY weekOf ASC;

/* this SQL query finds the number of Zendesk tickets per week (starting with the week of 2018-01-08)
that are in groups Engineering, Partner Support, Product Support, Application Support. */
