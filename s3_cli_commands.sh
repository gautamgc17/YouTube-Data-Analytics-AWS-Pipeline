# To check if aws cli is properly installed or not
aws

# Configure aws cli with your IAM user credentials
aws configure

# List all S3 buckets
aws s3 ls

# To copy all JSON files in the dataset to a particular directory in S3 bucket:
aws s3 cp . s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats_ref_data/ --recursive --exclude "*" --include "*.json"

# To copy all CSV data files to its respective location, following Hive-style patterns
aws s3 cp CAvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=ca/
aws s3 cp DEvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=de/
aws s3 cp FRvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=fr/
aws s3 cp GBvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=gb/
aws s3 cp INvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/regio=in/
aws s3 cp JPvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=jp/
aws s3 cp KRvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=kr/
aws s3 cp MXvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=mx/
aws s3 cp RUvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=ru/
aws s3 cp USvideos.csv s3://de-for-youtube-analysis-raw-useast1-dev-v1/youtube_analysis/raw_stats/region=us/