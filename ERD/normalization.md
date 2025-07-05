# Airbnb Database Normalization to 3NF

## Objective
Ensure the database schema adheres to Third Normal Form (3NF) to eliminate redundancy, ensure data integrity, and optimize relational design.

## Step-by-Step Normalization

### 1. First Normal Form (1NF) – Atomicity
A relation is in 1NF if:
- It has a primary key.
- All attributes are atomic (no repeating groups or arrays).

All entities (User, Property, Booking, Payment, Review, Message) meet 1NF requirements.

### 2. Second Normal Form (2NF) – Partial Dependencies
A relation is in 2NF if:
- It is in 1NF.
- All non-key attributes are entirely functionally dependent on the whole primary key.

All tables have single-column primary keys (UUIDs), so partial dependencies do not exist.

### 3. Third Normal Form (3NF) – Transitive Dependencies
A relation is in 3NF if:
- It is in 2NF.
- No transitive dependencies exist (i.e., non-key attributes must not depend on other non-key attributes).

#### Reviewing each table for 3NF compliance:

##### User Table
| Field | Potential Issue |
|-------|------------------|
| Role  | Proper ENUM. A table `Role` was created to ensure the expansion of roles. |

##### Booking Table
The `total_price` field can potentially be a derived value calculated from the price per night × nights (end date - start date).

We can only guarantee the total price if prices are not subject to change after booking or if discounts are not applicable. Otherwise, calculate dynamically to maintain normalization.

##### Payment Table
The `amount` depends solely on the `booking_id`.

`payment_method` is an independent attribute; thus, the lookup table `PaymentMethod` is used.

## Improvements
- Extracted ENUMs into lookup tables for flexibility (e.g., `Roles`, `PaymentMethods`, `BookingStatus`).
- Audit `total_price` logic for recalculation vs storage tradeoff.

## Summary
The Airbnb schema is mostly normalized and complies with 3NF, with the only minor concern being `total_price` in the `Booking` table, which may be a derived value. As long as business justification exists (e.g., price locks or promotions), it’s valid to store it.
