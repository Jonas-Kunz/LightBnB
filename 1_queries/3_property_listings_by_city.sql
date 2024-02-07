SELECT properties.id AS id, title, cost_per_night, city, AVG(property_reviews.rating)
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city = 'Vancouver'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night DESC
LIMIT 10;
;