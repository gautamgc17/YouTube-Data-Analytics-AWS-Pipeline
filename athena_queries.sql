-- query to view the table
SELECT * FROM "AwsDataCatalog"."de-for-youtube-analysis-raw"."raw_stats" ORDER BY region LIMIT 10;


-- query to join the tables
SELECT t1.title, t1.category_id, t2.snippet_title FROM "de-for-youtube-analysis-raw"."raw_stats" t1 
INNER JOIN "db_cleaned_youtube"."cleaned_stats_ref_data" t2 
ON t1.category_id = t2.id LIMIT 10;


-- to get results region wise
SELECT t1.title, t1.category_id, t2.snippet_title FROM "de-for-youtube-analysis-raw"."raw_stats" t1 
INNER JOIN "db_cleaned_youtube"."cleaned_stats_ref_data" t2 
ON t1.category_id = t2.id WHERE t1.region = 'ca';


-- on the cleaned and transformed data
SELECT t1.title, t1.category_id, t2.snippet_title FROM "db_cleaned_youtube"."raw_stats" t1 
INNER JOIN "db_cleaned_youtube"."cleaned_stats_ref_data" t2 
ON t1.category_id = t2.id WHERE t1.region = 'ca' LIMIT 10;


-- create final database for analytics
CREATE DATABASE db_youtube_analytics;


-- count the total number of records in the table
SELECT COUNT(*) FROM final_analysis;


-- get the top 10 videos with the highest number of views
SELECT * FROM final_analysis ORDER BY views DESC LIMIT 10;


-- find videos with the most likes and dislikes
SELECT video_id, likes, dislikes FROM final_analysis ORDER BY likes DESC, dislikes DESC LIMIT 10;


-- calculate the average number of comments per video
SELECT AVG(comment_count) AS avg_comments FROM final_analysis;


-- group videos by region and calculate the total views for each region
SELECT region, SUM(views) AS total_views FROM final_analysis GROUP BY region;


-- retrieve videos that are disabled for ratings and comments
SELECT * FROM final_analysis WHERE ratings_disabled = true AND comments_disabled = true;
