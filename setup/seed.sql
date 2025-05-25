-- Common mistake is to not put the semi colon at the end
-- the c

-- Create the database
CREATE DATABASE dbtplaydb;

-- Create a User for this database
-- The password is not used in localhost instance of PostgreSQL
CREATE USER dbtuser WITH PASSWORD 'Random1234';
--Response CREATE ROLE

-- Grant permission for this user in this database
GRANT ALL PRIVILEGES ON DATABASE dbtplaydb to dbtuser;
--Response GRANT


-- Connect to the DB with the new user
psql -U dbtuser -d dbtplaydb

-- On localhost there is no prompt for password and this is ignored
-- TODO there is a setting in config that needs to be changed to prompt for password

--- connect within psql
\c dbtplaydb dbtuser


-- check the user connection
\conninfo


-- Create schema
CREATE SCHEMA if not exists sales;

-- list the schema
\dn

create table if not exists sales.customer (
    id              SERIAL,
    full_name       VARCHAR(100) NOT NULL,
    email           VARCHAR(60) NOT NULL
);


-- list the tables or relations in schema
\dt sales.*

-- list the tables or relations in all schema
\dt *.*

-- list all views in  a scheme
\dv sales.*

-- Sample Records
INSERT INTO sales.customer VALUES
(DEFAULT, 'John Dow', 'johndoe@gmail.com'),
(DEFAULT, 'May Jane', 'mayjane@gmail.com'),
(DEFAULT, 'Adam Smith', 'adamsmith@gmail.com');

-- some cleanup of example tables if there is also a corresponding view
DROP TABLE sales.my_first_dbt_model CASCADE;

-- if you wrongly create in the sales schema instead of target schema
DROP VIEW sales.view_customer_model;
