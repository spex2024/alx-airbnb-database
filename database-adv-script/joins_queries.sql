-- Query 1: INNER JOIN to retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date,
    users.id AS user_id,
    users.name AS user_name
FROM 
    bookings
INNER JOIN 
    users
ON 
    bookings.user_id = users.id
ORDER BY bookings.booking_date DESC;

-- Query 2: LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.comment AS review_comment
FROM 
    properties
LEFT JOIN 
    reviews
ON 
    properties.id = reviews.property_id
ORDER BY properties.id ASC, reviews.id ASC;

-- Query 3: FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date
FROM 
    users
FULL OUTER JOIN 
    bookings
ON 
    users.id = bookings.user_id
ORDER BY users.id ASC, bookings.id ASC;