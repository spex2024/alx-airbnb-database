-- Indexes to improve query performance

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
CREATE INDEX idx_properties_city ON properties(city);

-- Analyze query performance using EXPLAIN ANALYZE
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'test@example.com';
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 1;
EXPLAIN ANALYZE SELECT * FROM bookings ORDER BY created_at DESC;
EXPLAIN ANALYZE SELECT * FROM properties WHERE city = 'New York';