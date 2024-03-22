
![Mage](https://github.com/Abubakrmali2/DE-Movies-Project/blob/main/Images/dark.svg?raw=true)



Mage is an open-source hybrid framework that integrates and transforms data. It helps you run, monitor, and orchestrate data pipelines with instant feedback.

---

## Installation Steps

1- install Mage
```bash
    pip install mage-ai 
```
2- Create a new project and launch the tool
```bash
    mage start [project_name]
```
3- Open Mage:  
     Open http://localhost:6789 in your browser.


## The fastest way to get started is by checking out the MAGE documentation here.
    https://docs.mage.ai/getting-started/setup

----
## Pipeline Overview

The image below illustrates the structure of our data ingestion pipeline:

![Pipeline Overview](https://github.com/Abubakrmali2/DE-Movies-Project/blob/main/Images/MAGE_ETL_Pipline.png?raw=true)
    
The pipeline consists of several blocks, each responsible for a specific task. The first block downloads the compressed file containing movies, ratings, and user data, and then uncompresses the file. Subsequent blocks extract ratings and user data from the already downloaded files. This dependency ensures that the extraction blocks rely on the successful execution of the first block.

Additionally, this pipeline is scheduled to execute monthly, as it provides a sufficient period to collect updates about the movies.

![Pipeline Overview1](https://github.com/Abubakrmali2/DE-Movies-Project/blob/main/Images/MAGE_ETL_Pipline1.png?raw=true)


All the scripts used in the pipeline blocks can be found in the following folders: data_loaders, transformers, data_exporters. You can access them [here](https://github.com/Abubakrmali2/DE-Movies-Project/tree/main/MAGE/DE-MOVIES).

Before executing the pipeline, please ensure that you update the Mage's config file according to your environment.

![Pipeline Overview1](https://github.com/Abubakrmali2/DE-Movies-Project/blob/main/Images/MAGE_ETL_Pipline2.png?raw=true)

---
