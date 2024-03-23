
![toolsover](https://github.com/Abubakrmali2/DE-Movies-Project/blob/main/Images/Tools%20overview-3.png?raw=true)

# MovieLens Data Analysis
---
## Introduction:
Welcome to the MovieLens Data Analysis project! This project aims to build an end-to-end pipeline  to analyze and derive insights from the MovieLens dataset using modern data engineering and analytics techniques.

#### Overview:
The MovieLens dataset provides a rich collection of movies and ratings data, making it an ideal resource for exploring trends and patterns in the world of cinema. In this project, we leverage various technologies and tools to ingest, process, analyze, and visualize this data.
You can find more details about the used dataset from the following link.

[Dataset Details](https://github.com/Abubakrmali2/DE-Movies-Project/tree/main/Dataset-Details)

#### Key Components:

- Data Ingestion: We use Mage as a workflow orchestrator to perform batch processing of the MovieLens dataset. Python scripts are employed to fetch data from the MovieLens website and prepare it for further processing.

- Cloud Infrastructure: Terraform is utilized as an IaC tool to provision cloud resources on the Google Cloud Platform (GCP) platform.

- Data Storage: The collected data is uploaded to Google Cloud Storage (GCS) buckets for storage and easy access.

- Data Warehousing: Google BigQuery is used as the data warehouse for storing and querying the dataset.
  
- Data Transformations: We employ dbt (data build tool) to transform and model the raw data into structured datasets suitable for analysis.

- Dashboard: Finally, we create interactive dashboards using the Google Data Studio visualization tool. These dashboards provide intuitive visualizations of key metrics and insights derived from the MovieLens dataset.

#### Contributions:
We welcome contributions from the community to enhance and expand the capabilities of this project. Whether you're interested in data engineering, cloud computing, analytics, or visualization, there are plenty of opportunities to get involved!

Getting Started:
To get started with the MovieLens Data Analysis Pipeline project, follow the setup instructions provided in the repository. Make sure to check out the documentation for detailed guidance on setting up the environment and running the pipeline.

Join us in exploring the fascinating world of movies through data analysis! Let's dive into the exciting journey of uncovering insights and trends hidden within the MovieLens dataset.

---

## [Problem description]()

The project aims to solve several key problems related to data engineering and analytics. Here's a description of the problems that the project aims to address:

- Data Ingestion and Storage: The project addresses the challenge of ingesting and storing large datasets efficiently. The MovieLens dataset contains multiple files with movie ratings, user information, and movie information. By building an ETL pipeline, the project ensures that the dataset is ingested into a data lake on the Google Cloud Platform (GCP), allowing for scalable and cost-effective storage.

- Data Warehousing: The project aims to address the need for a centralized data warehousing solution where data from various sources can be integrated and analyzed. By moving the dataset from the data lake to BigQuery, a fully managed data warehouse solution provided by GCP, the project enables users to perform complex analytical queries and gain insights from the data.

- Data Transformation and Modeling: The project leverages dbt (data build tool) to transform and model the data stored in BigQuery. This involves cleaning, structuring, and aggregating the data to create dimensional tables that are optimized for analytical queries. By implementing a standardized and reproducible data modeling process, the project ensures that analysts and data scientists can easily access and analyze the data.

- Insight Generation and Decision Making: Finally, the project enables stakeholders to derive insights and make data-driven decisions by visualizing the data through a dashboard. The dashboard provides interactive visualizations and key performance indicators derived from the transformed data, allowing users to monitor trends, identify patterns, and track performance metrics related to movies.

In summary, the project addresses the challenges of data ingestion, storage, warehousing, transformation, and analytics, ultimately enabling stakeholders to leverage the MovieLens dataset to gain valuable insights and make informed decisions.


---

## [Using the Cloud]()

In this project, we utilized the Google Cloud Platform (GCP) to establish essential infrastructure components such as Google Bucket for storage and BigQuery as a data warehousing solution. We employed the Terraform Infrastructure as Code (IaC) tool to facilitate this aspect of the project. 

For detailed instructions on installing and configuring Terraform, please refer to the link below:

[Terraform](https://github.com/Abubakrmali2/DE-Movies-Project/blob/main/Terraform/README.md)

---

## [Data Ingestion]()

To ingest the data from the MovieLens website, we utilized MAGE to construct an end-to-end pipeline. This pipeline extracted the data from the MovieLens website in the form of a zipped file. Using Python, we then extracted the contents of the zip file, which consisted of three files: movies, ratings, and users. Subsequently, we performed various transformations on these files before uploading them as parquet files to our data lake on Google Cloud Storage.

For detailed instructions on installing and configuring MAGE, please refer to the link below:

[MAGE](https://github.com/Abubakrmali2/DE-Movies-Project/tree/main/MAGE)

---

## [Data Warehouse]() 

In our project, we leverage Google BigQuery as our data warehouse to efficiently store and query ingested data from our data lake. Our optimization strategies focus on partitioning and clustering to enhance query performance and reduce costs.

#### Partitioning:

- Definition: Partitioning divides large datasets into smaller, manageable parts based on specific column values.
- Implementation: We partition the rating table by the Timestamp column, allowing BigQuery to narrow down data scans to relevant partitions. This minimizes unnecessary data retrieval, resulting in reduced query costs and improved execution time.

#### Clustering:

- Definition: Clustering involves physically ordering data within each partition based on one or more columns.
- Implementation:
In the rating table, we cluster data by UserID and MovieID, grouping relevant data together and optimizing query performance.
Additionally, in the movies table, we employ clustering on the Genres and MovieDate columns. Clustering by Genres facilitates efficient retrieval of movies belonging to the same genre, while clustering by MovieDate ensures that movies released in the same year are stored together. This organization enhances query performance when analyzing movies based on genre or release year, leading to overall cost savings and improved efficiency.

For more detailed information and the queries used to create these optimized tables in BigQuery, refer to the link below.

[BigQuery](https://github.com/Abubakrmali2/DE-Movies-Project/tree/main/BigQuery)

---

## [Data Transfermation]()

---
