SELECT concat('Average stay is ', round(avg(end_date - start_date), 2),' Days') as average_duration
FROM reservations;


