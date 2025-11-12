--SYNONYM IN ORACLE
--synonym is the alternative name of the object like table, view, sequance, procedure, etc.
--CREATE SYNONYM or CREATE ANY SYNONYM privalige are required.
--mostly used when object of another schema need to be accessed.

--CREATE [OR REPLACE][PUBLIC] SYNONYM
--[schema] synonym_name
--FOR [schema.] object_name [@dblink]

--it hides the actual owner and name of the object.
create or replace synonym emp for employees;