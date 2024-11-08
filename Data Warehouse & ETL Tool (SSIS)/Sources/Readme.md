# SSIS Packages for Data Transfer

Customer, Services, Contract, Date, Churn and FactCustomerChurn Package

![image](https://github.com/user-attachments/assets/c5fbe681-0470-4e48-9585-ee9885fb62c2)



Description:

This package transfers data related to churn, customer, contract, date and FactCustomerChurn from the source tables into their respective dimensional tables in the data warehouse:

    Services Data Transfer: Moves 7043 rows from the Services table to DimServices.
    contract Data Transfer: Moves 7043 rows from the contract table to DimContract.
    date Data Transfer: Transfers 293 rows from the Date table, with a data conversion step, into the DimChurn table.

![image](https://github.com/user-attachments/assets/00ba10be-b734-42cf-bbe2-1bfe3372bf24)


