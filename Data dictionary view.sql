--DATA DICTIONARY VIEWS
--oracle data dictionary views are a collection of read only tables and views that 
--provide the metadata about the database. They serve as a comprehensive source of 
--information about the database schema, objects, users, privilages, and performance.

--TYPES OF DATA DICTIONARY VIEWS
--ALL_views
    --all innformation are accesable to the user.
    --own schema + object of other schemas on wchich which current user has access to via any user.
    
--USER_views
    --information on objects own by the current user'
    --own schema only
--DBA_views
    --all the relevent information present in entire database.
    --all schemas in the database.

select * from all_all_tables where owner = 'HR';
select * from all_tables where owner = 'HR';
select * from all_objects where owner = 'HR';
select * from all_objects where owner ='HR' and object_type = 'TABLE';

select * from all_tab_cols where owner = 'HR';
select * from all_tab_columns where owner ='HR';









