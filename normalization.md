# Database Normalization for AirBnB Schema

## Objective
Apply normalization principles to ensure the AirBnB database schema is in Third Normal Form (3NF).

---

## Step 1: Review Existing Schema

Entities:

- **User**(user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
- **Property**(property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
- **Booking**(booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
- **Payment**(payment_id, booking_id, amount, payment_date, payment_method)
- **Review**(review_id, property_id, user_id, rating, comment, created_at)
- **Message**(message_id, sender_id, recipient_id, message_body, sent_at)

---

## Step 2: Identify Potential Redundancies and Normalization Violations

### First Normal Form (1NF)
- All tables have atomic attributes.
- No repeating groups or arrays.
- **Status** fields and **role** use ENUMs to limit values — consistent with 1NF.

### Second Normal Form (2NF)
- All non-key attributes fully depend on the entire primary key.
- All tables use a single attribute (UUID) as the primary key, so partial dependency is not an issue.
