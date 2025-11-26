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

select count(distinct CHANNEL) from spotify_data_table;

select distinct MOST_PLAYEDON from spotify_data_table;
commit;

------------------------------------------------------------------------
--Some business problems to solve
------------------------------------------------------------------------
--retrive all the tracks that have more then 1 billion streams.
select * from spotify_data_table
where STREAM > 1000000000;

select count(*) from spotify_data_table
where STREAM > 1000000000;

--List all the the albums along with their respective artists.
select ARTIST, ALBUM from spotify_data_table
group by ARTIST, ALBUM
order by ARTIST;

--Get the total number of comments for tracks where licensed = TRUE
select count(COMMENTS) from spotify_data_table
where LICENSED = 'TURE';























