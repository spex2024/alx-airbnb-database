# Partitioning Performance Report

## Objective
Implement table partitioning on the large `bookings` table based on the `start_date` column to optimize query performance.

---

## Partitioning Strategy
- Used **RANGE partitioning** on `start_date` to divide the bookings into yearly partitions.
- Created separate partitions for each year (e.g., 2023, 2024).
- Migrated existing data from the original `bookings` table to the new partitioned table.

---

## Performance Testing

### Queries Tested:
- Fetching bookings within a specific date range, e.g.:
  ```sql
  SELECT * FROM bookings_partitioned WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';
