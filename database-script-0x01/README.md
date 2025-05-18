# AirBnB Database Schema

This directory contains the SQL schema for the AirBnB clone database.

## Files

- `schema.sql`: SQL script to create all database tables with constraints and indexes.

## Usage

1. Ensure you are using PostgreSQL.
2. Enable the `uuid-ossp` extension in your database to support UUID generation:
   ```sql
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
