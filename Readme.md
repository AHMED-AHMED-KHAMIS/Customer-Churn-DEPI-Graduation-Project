# Customer Churn Database Schema

This project contains a set of tables about Telecom Customer Churn

## Tables
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
    
