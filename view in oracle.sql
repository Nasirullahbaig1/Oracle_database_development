--VIEW IN ORACLE
--view is the logical table which represents another table or view.
--view does not store any sort of data. its a virtual table or named query.

--view provides security of the and it is also used for simplicity.
--updatable and non-updatable views.

--However if we have used an aggregate function, join, union(or any set operator), 
--distinct or group by then such a view cannot be updated.

--create view syntax
--CREATE [OR REPLACE] VIEW <view name> as 
--      <SELECT query>
--      [WITH CHECK OPTION]
--if the a view exist already with the same name it will not give us error insted it will replace it.












