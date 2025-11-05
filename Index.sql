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

--Bitmap:- It is used when distinct values of the indexed columns are limited.
--Uses bitmap to point the values.
--usually used on a data like gender where most of the data is male or female.
--Bitmap indexing stores the null values as well.
--syntax: create [BITMAP] index <index_name>
--        on <table_name>
--        (<column1> [<column2>, .....]);
 

