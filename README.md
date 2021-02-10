# Homegate Data Platform

## Development environment

### Deploying Snowflake database objects
The database objects (stages, tables, views, ...) get deployed to the *test* and *prod* environment via CI/CD. In order to verify changes on *dev* however, another mechanism is needed to deploy onto the developer's own database.

As a prerequisite create the file `~/.snowsql/config` with the following content and fill the missing values in order to access your own Snowflake database.

```
[connections]
username = <SNOWSQL_USERNAME>
password = "<SNOWSQL_PASSWORD>"
accountname = hgdp
region = eu-central-1
rolename = <SNOWSQL_ROLENAME>
warehouse = wh_analytics_dev
dbname = <SNOWSQL_DBNAME>
```

We use our own [Snowstorm](https://gitlab.com/homegate/docker-images/-/tree/master/snowstorm) docker image to issue SQL statements via `snowsql`. Make sure you are logged into the private registry with your Homegate GitLab user and you have the necessary permissions set up to pull the image.
```
docker login registry.gitlab.com
``` 

Execute the following command in the project root to deploy:
```
docker run -it --rm --network host \
    --mount "type=bind,source=$HOME/.snowsql/config,destination=/root/.snowsql/config" \
    --mount "type=bind,source=$(pwd)/snowflake,destination=/root/snowflake" \
    -e "S3_BUCKET_NAME=hg-data-lake-dev" \
    -e "STORAGE_INTEGRATION_NAME=SI_S3_HG_ANALYTICS_DATALAKE_DEV" \
    registry.gitlab.com/homegate/docker-images/snowstorm:latest /root/snowflake/ddl/create_ddl.sh
```

### Matillion

[Matillion](https://matillion.com/) is a cloud-based ETL solution. We're hosting a single instance on our `hg-data-platform-prod` account.

Part of the Matillion deployment are three SQS queues (request, success and error) which are used to integrate with external systems such as Airflow.

These queues are configured such that both AWS account `hg-data-platform-test` and `hg-data-platform-prod` can read and write to them.

## Google Cloud Platform (GCP) Resources
In order to ingest the Google Analytics (GA) data source into the data lake, there are some GCP resources needed.

Manual creation of resources (for DEV, TEST and PROD environments each - <env>={`dev`, `test`, `prod`}, <ENV>={`DEV`, `TEST`, `PROD`}):

- GS bucket 
  - Name: hg-data-platform-ga-data-<env>
  - location type: Region
  - location: europe-west3 (Frankfurt)
  - Default storage class: Standard
  - Access control: Uniform
  - Encryption: Google-managed key
  - Labels:
    - hg_service: data_platform
    - hg_environment: <env>
- Service Account
  - Service account name: <env>-ga-data-platform-ingestion-airflow
  - Service account ID: <env>-ga-data-platform-ingestio
  - Description: <ENV> environment Service Account used for the data ingestion process of GA data into the Homegate data lake.
  - Permissions:
    - Role: BigQuery Data Owner (Full access to datasets and all of their contents)
    - Role: BigQuery User (Access to run queries and create datasets)
    - Roles: BigQuery Job User (Access to run jobs)
    - Role: Storage Object Admin (Full control of GCS objects)
- BigQuery DataSet
  - Name: <ENV>_full_export
  - location: US
  - Encryption: Google-managed key

## Technical Debt

- GCP resources are manually created and not reflected in Git repo as IaC
- Environments on GCP are not properly isolated. DEV, TEST and PROD service accounts can manipulate each other's resources or can even manipulate the BigQuery data source.
- The IAM policies given to the Matillion instance grant too many and too open permissions. In order to increase security we need to change that so only the necessary permissions are granted.

