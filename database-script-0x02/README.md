# AirBnB Database Seed Data

This directory contains sample data SQL scripts to populate the AirBnB database for testing and development.

## Files

- `seed.sql`: Inserts sample users, properties, bookings, payments, reviews, and messages.

## Usage

1. Make sure your database schema is created and the tables exist.
2. Run the seed script to insert sample data:
   ```bash
   psql -U your_user -d your_database -f seed.sql
