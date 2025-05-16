# Performance Optimization Report

## Objective
Refactor a complex SQL query to improve performance when retrieving booking data along with related user, property, and payment details.

---

## Step 1: Initial Query

An initial query was written in `performance.sql` to retrieve:
- All bookings
- Associated user details
- Corresponding property details
- Related payment information

---

## Step 2: Performance Analysis

Used the `EXPLAIN` command to evaluate query execution.

### Observations:
- Full table scans due to lack of indexes
- No filtering (`WHERE` clause) — scanned all rows
- JOINs on non-indexed columns slowed performance

---

## Step 3: Optimization Techniques Applied

- Added `WHERE` clause to limit scanned rows
- Ensured `user_id`, `property_id`, `payment_id`, and `created_at` were indexed
- Selected only required columns
- Used aliases for cleaner syntax

### Refactored Query:
```sql
SELECT 
  b.id AS booking_id,
  b.created_at,
  u.name AS user_name,
  u.email,
  p.name AS property_name,
  p.city,
  pay.amount,
  pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id
WHERE b.created_at >= NOW() - INTERVAL '1 year';
