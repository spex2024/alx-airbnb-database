-- Initial unoptimized query to retrieve bookings with user, property, and payment details

SELECT 
  bookings.id,
  bookings.created_at,
  users.name,
  users.email,
  properties.name AS property_name,
  properties.city,
  payments.amount,
  payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id;
-- Optimized query using Common Table Expressions (CTEs) to improve readability and performance