select * from spotify_data_table;
select count(*) from spotify_data_table;
select count(distinct artist) from spotify_data_table;
select count(distinct ALBUM) from spotify_data_table;
select distinct ALBUM_TYPE from spotify_data_table;

select DURATION_MIN from spotify_data_table;
select min(DURATION_MIN) from spotify_data_table;
select max(DURATION_MIN) from spotify_data_table;
select avg(DURATION_MIN) from spotify_data_table;

select * from spotify_data_table
where DURATION_MIN = 0;

delete from spotify_data_table
where DURATION_MIN =0;






