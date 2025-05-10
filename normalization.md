# Normalization to Third Normal Form (3NF)

## Repository: `alx-airbnb-database`
## File: `normalization.md`

---

## Objective
To ensure that the database schema is normalized up to Third Normal Form (3NF) by eliminating redundancy and ensuring data integrity.

---

## Step-by-Step Normalization Process

### 1. First Normal Form (1NF)

Criteria:
- Atomic values (no repeating groups or arrays).
- Unique column names.
- Each record is unique.

All tables meet 1NF:
- All attributes contain atomic values (e.g., one `email`, one `phone_number`).
- No multi-valued fields or repeating groups.

---

### 2. Second Normal Form (2NF)

Criteria:
- Must be in 1NF.
- All non-key attributes must be fully functionally dependent on the entire primary key.

All tables are in 2NF:
- Tables with composite keys (e.g., none here) are avoided.
- All non-key attributes in each table depend on the full primary key (e.g., in `Booking`, `total_price` depends on `booking_id`, not just part of a key).

---

### 3. Third Normal Form (3NF)

Criteria:
- Must be in 2NF.
- No transitive dependency: Non-key attributes must not depend on other non-key attributes.

Tables already in 3NF:

#### User
- No transitive dependencies. `role`, `email`, etc. depend only on `user_id`.

#### Property
- Attributes like `name`, `description`, `location`, etc., all depend directly on `property_id`.

#### Booking
- `total_price` is directly dependent on `booking_id`, not on `start_date` or `pricepernight`. 
  - Assumes `total_price` is a calculated value stored for historical consistency.

#### Payment
- All attributes depend solely on `payment_id`.

#### Review
- No transitive dependencies. `rating` and `comment` depend directly on `review_id`.

#### Message
- Both `sender_id` and `recipient_id` reference the `User` table, no derived data.

---

## Adjustments (If Any)

No structural changes were necessary as the schema was already well-structured and followed normalization principles.

However, to avoid ambiguity and support future scalability:
- A separate Role table could be introduced if `role` behavior becomes more complex.
- `total_price` in `Booking` should be explained as a snapshot value for historical accuracy, not dynamically derived, to preserve consistency.

---

## Conclusion

The database schema satisfies all the conditions of Third Normal Form (3NF):
- Eliminates redundancy.
- Maintains data integrity.
- Ensures efficient data storage.

---

## Notes
- Indexes are properly defined for optimization (e.g., `email`, `property_id`, `booking_id`).
- ENUMs are acceptable in some DBMSs; consider lookup tables if behavior becomes more complex or ENUMs become restrictive.
