# Index Performance Optimization

## Objective
Improve SQL query performance by creating indexes on frequently used columns in the `users`, `bookings`, and `properties` tables.

---

## Step 1: Identify High-Usage Columns

Analyzed the structure and common query patterns across the main tables. Focused on columns frequently used in:

- `WHERE` filters
- `JOIN` conditions
- `ORDER BY` clauses

### Identified Columns:
- `users.email` — used for login and user lookup.
- `bookings.user_id` — used to join users with their bookings.
- `bookings.property_id` — used to link bookings to properties.
- `bookings.created_at` — commonly used for sorting recent bookings.
- `properties.city` — often filtered by city in search queries.

---

## Step 2: Create Indexes

Used `CREATE INDEX` to speed up queries on these columns. The SQL commands are written and saved in `database_index.sql`.

### Sample Indexes:
```sql
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
CREATE INDEX idx_properties_city ON properties(city);
