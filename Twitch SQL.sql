-- Exploring the table chat and stream
-- select *
-- from chat
-- limit 10;

-- select *
-- from stream
-- limit 10;

-- Finding what games are being streamed
-- select distinct game
-- from stream
-- where game is not null;

-- Finding channel used to stream the games
-- select distinct channel
-- from stream
-- where channel is not null;

-- To find the most popular games
-- select game, count(*)
-- from stream
-- group by game
-- order by 2 desc;

-- To find how many LoL viewers in each location
-- select country, count(channel)
-- from stream
-- where game = 'League of Legends'
-- group by country
-- order by 2 desc;

-- To find the most popular player used by the streamer
-- select player, count(*)
-- from stream
-- group by player
-- order by 2 desc;

-- Creating a new column called genre and classified each game to their appropriate genre
-- select game, 
-- case
--   when game = 'League of Legends' then 'MOBA'
--   when game = 'Dota 2' then 'MOBA'
--   when game = 'Heroes of the Strom' then 'MOBA'
--   when game = 'Counter-Strike: Global Offensive' then 'FPS'
--   when game = 'DayZ' then 'Survival'
--   when game = 'Survival Evolved' then 'Survival'
--   else 'Other'
-- end as genre,
-- count (*)
-- from stream
-- where game is not null
-- group by game
-- order by 3 desc;

-- to count the number of viewers for each hours
-- select strftime('%H', time) as Hours, count(*) as num_hours
-- from stream
-- where country = 'US'
-- group by Hours
-- order by 1 desc ;

-- joining both stream and chat table to see their relationships
-- select *
-- from stream a
-- join chat b
-- on a.device_id = b.device_id 
-- limit 10;