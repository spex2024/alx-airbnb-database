# Database Schema for Airbnb-style Platform

## Directory: `database-script-0x01`
## File: `schema.sql`

---

## Objective

Define the relational schema using SQL `CREATE TABLE` statements to set up the database structure for an Airbnb-style booking platform.

---

## Tables Defined

- **User**: Stores all user information including roles like guest, host, and admin.
- **Property**: Listings created by hosts.
- **Booking**: Reservations made by guests for properties.
- **Payment**: Records of completed payments for bookings.
- **Review**: Ratings and comments left by users for properties.
- **Message**: Direct messages between users.

---

## Features

- UUIDs used as primary keys.
- Foreign key constraints ensure referential integrity.
- ENUMs define valid values for roles, statuses, and payment methods.
- Timestamps track record creation and updates.
- Indexes improve query performance on key lookup columns.

---

## Notes

- Modify ENUM definitions if your SQL engine does not support ENUM directly (e.g., in PostgreSQL, use `CREATE TYPE` or domain constraints).
- Consider implementing soft deletes or archiving for messages and bookings in future extensions.

