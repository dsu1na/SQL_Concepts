/*
ALTER TABLE Commands 

Alter is used to update the existing table without having to delete the existing table 
and creating a new one.

It involves:
Adding new column in the table 
Renaming columns in the table 
Modifying columns in the table
Droping columns in a table
*/

--ADD column
ALTER TABLE table_name ADD column_name data_type;

--RENAME column
ALTER TABLE table_name RENAME COLUMN column_name TO renamed_column;

--MODIFY column
ALTER TABLE table_name ALTER COLUMN column_name data_type;

--DROP column
ALTER TABLE table_name DROP COLUMN column_name;


/*
Rename a table
*/

RENAME TABLE table_name TO new_table_name;


/*
Truncate table
*/

TRUNCATE TABLE table_name;