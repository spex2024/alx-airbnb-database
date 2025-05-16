-- Query to find the total number of bookings made by each user
SELECT 
    user_id, 
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;

-- Query to rank properties based on the total number of bookings they have received
SELECT 
    property_id, 
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM 
    bookings
GROUP BY 
    property_id;