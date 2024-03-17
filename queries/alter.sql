-- Active: 1710422566562@@127.0.0.1@5432@test_db
-- add a COLUMN at existing table and VALUES NOT null and DEFAULT value set
ALTER Table employees ADD gender VARCHAR(10) DEFAULT 'Male' NOT NULL;

-- drop a COLUMN FROM table
ALTER Table employees DROP gender;