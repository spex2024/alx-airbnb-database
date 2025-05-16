# Explanation of Tasks – ALX Airbnb Database (Advanced SQL)

## Task 0: SQL Joins

This task focuses on understanding different types of joins in SQL and how to use them to combine data from multiple tables.

- **INNER JOIN:**  
  Retrieve only the bookings that are linked to users — shows data from both tables where a match exists.

- **LEFT JOIN:**  
  Retrieve all properties and any reviews linked to them — includes properties even if they have no reviews.

- **FULL OUTER JOIN:**  
  Retrieve all users and all bookings — includes users without bookings and bookings without users. Useful for full data visibility, even when relationships are missing.

---

## Task 1: Subqueries

This task builds your skills with subqueries — queries within queries — to filter or analyze data more dynamically.

- **Non-correlated Subquery:**  
  Find all properties with an average rating greater than 4.0. The subquery calculates average ratings, and the outer query filters properties based on that.

- **Correlated Subquery:**  
  Identify users who have made more than 3 bookings. The subquery runs once per user and counts how many bookings they've made.

---

## Task 2: Aggregations and Window Functions

This task introduces you to data summarization and ranking using aggregation and window functions.

- **Aggregation with COUNT & GROUP BY:**  
  Count how many bookings each user has made. Useful for reports or user activity dashboards.

- **Window Function (RANK or ROW_NUMBER):**  
  Rank properties based on how many bookings they've received. Helps you build leaderboards or determine top-performing listings.

---

These tasks help you master advanced SQL concepts used in real-world applications for analytics, reporting, and relationship-based data handling.
