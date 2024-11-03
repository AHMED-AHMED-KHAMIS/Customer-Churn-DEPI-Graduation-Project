# Customer Churn Interactions Data Warehouse
## Overview

 - This document provides an overview of the SQL schema and queries for managing Customer Churn interactions within a data warehouse.

 - It includes table definitions, data insertions, and aggregation queries, facilitating the analysis of Customer Churn-related data.

## Star Schema
  ![star_schema](https://github.com/user-attachments/assets/fc869812-67a2-47c6-b1cf-9de04d88eb04)

# Table Definitions

## 1. Dimension Tables

   Dimension tables are essential for storing descriptive attributes related to the facts.
   
   These attributes provide context and meaning to the data, enabling comprehensive analysis.

  ## Dimension Table: DimChurn

  ```sql
      CREATE TABLE DimChurn (
      	ChurnID INT IDENTITY(1,1) NOT NULL,
      	ChurnStatus varchar (3) NULL,
      PRIMARY KEY CLUSTERED
      ([ChurnID] ASC))
 ``` 


   ## Dimension Table: DimCustomer

  ```sql
      CREATE TABLE DimCustomer (
      	customerID varchar (50) NOT NULL,
      	gender varchar (10) NULL,
      	SeniorCitizen [int] NULL,
      	Partner varchar (3) NULL,
      	Dependents varchar (3) NULL,
      PRIMARY KEY CLUSTERED([customerID] ASC))
 ```
  ## Dimension Table: DimService

   ```sql
     CREATE TABLE DimService (
        PhoneService varchar (25) NULL,
        MultipleLines Varchar (25) NULL,
        InternetService varchar (25) NULL,
        OnlineSecurity varchar (25) NULL,
        OnlineBackup varchar (25) NULL,
        DeviceProtection varchar (25) NULL,
        TechSupport varchar (25) NULL,
        StreamingTV varchar (25) NULL,
        StreamingMovies varchar (25) NULL,
        ServiceID  INT NOT NULL,
      CONSTRAINT [service_id_PK] PRIMARY KEY CLUSTERED([ServiceID] ASC))
```


   ## Dimension Table: DimContract

  ```sql
    CREATE TABLE DimContract (
       Contract varchar (20) NULL,
       PaperlessBilling varchar (3) NULL,
       PaymentMethod varchar (50) NULL,
       contract_id int NOT NULL,
     CONSTRAINT [contract_id_PK] PRIMARY KEY CLUSTERED ([contract_id] ASC))
  
 ```

   ## Dimension Table: DimDate

  ```sql
      CREATE TABLE DimDate (
      	DateID int NOT NULL,
      	Date  date,
      PRIMARY KEY CLUSTERED
      ([DateID] ASC))
 ``` 

## 2. Fact Customer Churn

  The FactCustomerChurn table records interactions related to customer, contract, Services and churn.
  It captures quantitative data that can be analyzed to gain insights.

  ```sql
       CREATE TABLE FactCustomerChurn (
          customerID varchar (50) NOT NULL,
      	  tenure INT NULL,
      	  MonthlyCharges float NULL,
      	  TotalCharges float NULL,
      	  ChurnID INT IDENTITY (1,1) NOT NULL,
      	  contract_id INT NULL,
          ServiceID INT NULL,
          DateId int NOT NULL) ON [PRIMARY]
  ```



### Notes:
  customerID, servicesID, contractID, dateID: These foreign keys link to their respective dimension tables, allowing for detailed relational analysis.
  tenure, MonthlyCharges, TotalCharges: These columns hold aggregated counts that help in analyzing interactions, facilitating deeper insights into the relationships among customer, services, contract and churn

# Insertion Queries
  Insertion queries are crucial for populating the fact and dimension tables with relevant data.
  They establish relationships and facilitate meaningful analysis of churn.

# Insertion 
   ```sql
        INSERT INTO dbo.FactCustomerChurn (customerID, ChurnID, contract_id, ServiceID tenure, MonthlyCharges )
          SELECT
              ROW_NUMBER() OVER (ORDER BY dbo.MonthlyCharges) AS customerID,
              dbo.ChurnID,
              NULL AS ServiceID,
              NULL AS contract_id,
              COUNT(dbo.contract) OVER (PARTITION BY dbo.MonthlyCharges) AS MonthlyCharges
          FROM dbo.DimContract;
   ```
## Aggregation Queries

*Aggregation queries allow for the analysis of the data by summarizing and counting records, providing insights into various aspects of customer churn.*

```sql
      SELECT COUNT(customerID) AS totalCharges
      FROM FactCustomerChurn;
```

![totalcarges](https://github.com/user-attachments/assets/8d53685b-4cfc-4f18-a5a8-418f34dd4454)


# Conclusion

- This document serves as a guide to understanding the structure and functionality of the FactCustomerChurn Data Warehouse Start Schema.
- The provided SQL queries facilitate data insertion, manipulation, and aggregation for comprehensive Customer churn analysis.


