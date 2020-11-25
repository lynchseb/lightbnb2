SELECT properties.*, reservations.*, round(avg(rating), 2) as average_rating
FROM property_reviews
JOIN users ON users.id = guest_id
JOIN reservations ON reservations.id = reservation_id
JOIN properties ON users.id = owner_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;
