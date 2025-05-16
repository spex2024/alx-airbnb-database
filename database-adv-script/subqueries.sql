-- Query to find all properties where the average rating is greater than 4.0
SELECT property_id, property_name
FROM properties
WHERE (
    SELECT AVG(rating)
    FROM reviews
    WHERE reviews.property_id = properties.property_id
) > 4.0;

-- Correlated subquery to find users who have made more than 3 bookings
SELECT user_id, user_name
FROM users
WHERE (
    SELECT COUNT(*)
    FROM bookings
    WHERE bookings.user_id = users.user_id
) > 3;