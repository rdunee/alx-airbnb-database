# Airbnb Sample Data Population

This project contains SQL scripts to populate an Airbnb-style database with realistic sample data for testing and development purposes.

## Sample Data Includes:
- **Users** (guests, hosts, admin)
- **Properties** listed by hosts
- **Bookings** made by guests
- **Payments** for confirmed bookings
- **Reviews** written by guests
- **Messages** exchanged between users

## Files
- `sample_data.sql`: SQL `INSERT` statements for all major entities

## Usage
1. Make sure your database schema is already created using the `schema.sql`.
2. Run `sample_data.sql` in your SQL client or migration tool to seed the database.

## Notes
- UUIDs are hardcoded for clarity; in production, use UUID generators.
- Payment methods, booking statuses, and roles use ENUM values as defined in the schema.
- Designed for demo, testing, and early-stage development.

