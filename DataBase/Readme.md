# Customer Churn Database schema:
  This project contains a set of tables about telco customer churn.

# Azure Data Stodio
![azure_data_stodio_log](https://github.com/user-attachments/assets/6fde55bb-c662-4f7c-bffe-baefa0da70f2)

# Connected SSMS with Azure data stodio

![azuredatastudio](https://github.com/user-attachments/assets/7e20547e-8248-4166-b440-3e9003ebeae2)

![azuredatastodioconnectedwithssms](https://github.com/user-attachments/assets/2486d7f9-b8c4-4f87-b732-3a93c587a70a)

![dbconnectedcloudly](https://github.com/user-attachments/assets/d4b66528-3f9f-4f60-9987-b3f059ec85d5)

# Selected Top (1000) Rows from Database:

![dimazurecustomer](https://github.com/user-attachments/assets/cd26fe04-a36e-42cd-90a5-b452f4d116cc)



## Tables:

1. Customer:
     Stores information about Customer. Create this table first.
   
2. Services:
   contains Customer Services. Depends on the Customer tables.
   
3. Contract:
    Links Customer to Services. Depends on the Customer and Services tables.
   
4. Churn:
   Contains information about Customer states.
   
5. Date:
   Track the dates of Churn.

6. Fact_customer_churn

   

# Tables Creations :
  ## Run the following queries files:
    1. DimcCustomer.sql
    2. DimServices.sql
    3. Dimcontract.sql
    4. DimDate.sql
    5. DimChurn.sql
    6. Fact_customer_churn.sql
