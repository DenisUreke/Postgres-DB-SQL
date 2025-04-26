# Postgres-Database-SQL

# Requirements

To run this PostgreSQL database locally, you'll need:

Tools:

* Docker Desktop
* DBeaver (https://dbeaver.io/download/) optional but highly recommended GUI
* (Optional) psql CLI (https://www.postgresql.org/download/) if you prefer using terminal

# Getting Started

simply run in the cmd:

linux:

docker run --name postgres_db \
  -e POSTGRES_PASSWORD=admin \
  -e POSTGRES_DB=sql-db \
  -p 5432:5432 \
  -d postgres

powershell:
(has to be run on a single line):

docker run --name postgres_db -e POSTGRES_PASSWORD=admin -e POSTGRES_DB=sql-db -p 5432:5432 -d postgres

This will pull a postgress image and run it on the configuration you set it to.

# Connection details

[DBeaver]

Field	      Value
Host	      localhost
Port	      5432
Database	  sql-db
Username	  postgres
Password    admin

[CLI]

psql -h localhost -U postgres -d sql-db
(And you will be prompted for the password)

# SQL Files Overview
within the project in /databse you will find two files, schema and seed

# schema.sql
This file defines the structure of the database.
It contains all CREATE TABLE statements and sets up the necessary relationships between tables.
Use this file to initialize the database schema from scratch.

# seed.sql
This file includes sample data inserts used for testing and development.
It populates the tables with realistic example entries so that developers can run queries and test functionality without needing to input data manually.

# important!
So that everyone can have the same database it is important all schemes and seeds are also added to these files. Also try set them in a correct order incase one is dependant of the other.


