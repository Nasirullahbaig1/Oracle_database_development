--INDEX IN ORACLE SQL
--is the object of the database in which all the indexed column values are 
--stored along with the location of the row.
--for example: telephone directory like the names are in order and in index its telling us from where to where the names start and end.

--types of index

--B-tree:- Defalut index.
--values are stored in a balanced tree format.
--Good for primary key
--This is also called binery tree which means one parents can can two children.
--B-tree indexing do not store the null values.
--B-tree can have maximum 32 columns.
--syntax: create [UNIQUE] index <index_name>
--        on <table_name>
--        (column1/expression1 >[<column2/expression2>, .....]);

--the b-tree index when we have an unbalanced data for example marks of the student most of the student have got more marks then 50 
--while simply indexing the tree will not be balaced as most of the values will be on the side greater then 50.
--so to tackle this oracle use a reverse b-tree indexing in which the values are reversed like 84 becone 48 and so on.
--after reversing the values the new values are now stored in the b-tree which is now somehow more balaced then the previous one.
--but there are few disadvantages as welll like we can not use range queries on the reverse b-tree index.
--because when we search > 24 now 24 is 42 in the reverse index so it has to search the whole table which is not efficient.



--Bitmap:- It is used when distinct values of the indexed columns are limited.
--Uses bitmap to point the values.
--usually used on a data like gender where most of the data is male or female.
--Bitmap indexing stores the null values as well.
--syntax: create [BITMAP] index <index_name>
--        on <table_name>
--        (<column1> [<column2>, .....]);
select * from employees;
create index bitmap_index_employees_d_id 
on employees (department_id);
 

