![Bigquery](https://github.com/Abubakrmali2/DE-Movies-Project/blob/main/Images/google-bigquery.png?raw=true)

--
## Introduction

In this project, we utilize Google BigQuery as our data warehouse to efficiently store and query ingested data from our data lake stored in Google Cloud Storage. Below are the SQL queries used to create external tables that reference Parquet files and internal tables optimized with partitioning and clustering techniques.


- Create an external table that references the rating Parquet files stored in Google Cloud Storage
```bash
CREATE OR REPLACE EXTERNAL TABLE `de-movielens-project.movies_data.rating_external`
OPTIONS (
  format = 'parquet',
  uris = ['gs://de-movielens-project-movies-data/ratings.parquet']);
```
- Create a Rating Table and load data from the external rating table
```bash
CREATE OR REPLACE TABLE de-movielens-project.movies_data.rating 
PARTITION BY DATE(Timestamp)
CLUSTER BY UserID, MovieID AS (
  SELECT * FROM `de-movielens-project.movies_data.rating_external`);
```
------------------------------------------------------------------------------------------------------------

- Create an external table that references the user's Parquet files stored in Google Cloud Storage
```bash
CREATE OR REPLACE EXTERNAL TABLE `de-movielens-project.movies_data.user_external`
OPTIONS (
  format = 'parquet',
  uris = ['gs://de-movielens-project-movies-data/users.parquet']);
```
- Create a user table and load data from the external user table
```bash
CREATE OR REPLACE TABLE de-movielens-project.movies_data.user 
CLUSTER BY Gender AS (
  SELECT * FROM `de-movielens-project.movies_data.user_external`);
```
------------------------------------------------------------------------------------------------------------

- Create an external table that references the Movies Parquet files stored in Google Cloud Storage
```bash
CREATE OR REPLACE EXTERNAL TABLE `de-movielens-project.movies_data.movie_external`
OPTIONS (
  format = 'parquet',
  uris = ['gs://de-movielens-project-movies-data/movies.parquet']);
```
- Create a movies Table and load data from the external movies table
```bash
CREATE OR REPLACE TABLE de-movielens-project.movies_data.movie 
CLUSTER BY Genres, MovieDate AS (
  SELECT * FROM `de-movielens-project.movies_data.movie_external`);
```
---

Before executing these SQL queries, it's crucial to customize certain parameters to match your environment. Please ensure that you replace the bucket_path and dataset name placeholders with the actual values relevant to your setup. This step is necessary to ensure that the queries operate correctly within your Google Cloud Platform (GCP) project and interact with the appropriate storage locations and datasets.
