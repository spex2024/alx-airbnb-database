# Performance Monitoring and Improvements

## Objective  
Monitor and improve database performance by analyzing query plans and making adjustments.

---

## Queries Monitored  
- Bookings with user, property, and payment details (joins)  
- Bookings with respective users (INNER JOIN)  
- Properties and their reviews (LEFT JOIN)  
- All users and bookings (FULL OUTER JOIN)  
- Properties with average rating > 4.0 (subquery)  
- Users with more than 3 bookings (correlated subquery)  

---

## What We Did  
- Used `EXPLAIN ANALYZE` to check how queries run.  
- Identified slow parts caused by missing indexes and expensive subqueries.  

---

## Improvements Made  
- Added indexes on key columns:  
  - `bookings.user_id`  
  - `bookings.property_id`  
  - `bookings.payment_id`  
  - `reviews.property_id`  
- Optimized correlated subqueries by converting them to joins with grouping.

---

## Summary  
Adding indexes and optimizing queries improved performance. Continuous monitoring and adjustments are recommended to keep the database efficient.
