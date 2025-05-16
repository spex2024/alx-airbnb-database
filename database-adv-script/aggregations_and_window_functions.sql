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

-- Query to assign a unique row number to each booking per user, ordered by booking_date
SELECT
    user_id,
    id AS booking_id,
    booking_date,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY booking_date) AS booking_row_number
FROM
    bookings;