# Sample Data Population for Airbnb-style Database

## Directory: `database-script-0x02`
## File: `seed.sql`

---

## Objective

Populate the previously defined schema with realistic sample data to simulate an operational Airbnb-like platform.

---

## Tables Populated

- **User**: 3 users (guest, host, admin)
- **Property**: 2 listings by one host
- **Booking**: 2 bookings by the guest
- **Payment**: Payments for each booking
- **Review**: Guest reviews on both properties
- **Message**: Conversation between guest and host

---

## Notes

- UUIDs are used for all primary keys to simulate production-ready identifiers.
- Prices and dates reflect a reasonable booking timeline.
- Passwords are stored as hashed values (placeholders in this example).
- Relationships between tables are respected via proper foreign key references.

---

## How to Run

Ensure that the database schema (`schema.sql`) has been created before executing this file.

```bash
mysql -u your_user -p your_database < seed.sql
