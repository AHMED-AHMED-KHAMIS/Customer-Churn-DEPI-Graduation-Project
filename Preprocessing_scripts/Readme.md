# Gathering Data files and Merge them in a 1 single csv file:

![image](https://github.com/user-attachments/assets/56ee8270-1f5f-4442-9021-8fa9874c5055)

# Data cleaning processing

![image](https://github.com/user-attachments/assets/61246242-bf3f-44bb-95f1-218605febf1d)

# Handling the missing values

![image](https://github.com/user-attachments/assets/7dd3ed24-0ef9-49a2-9e5c-b5d743569bb8)

# Create SQLAlchemy engine and Data Insertion process into the SQL Server database table 'customer_churn_data'

![image](https://github.com/user-attachments/assets/032d87b2-e5b7-4421-8f0c-211718d9c086)

# Read Customer churn data 

![image](https://github.com/user-attachments/assets/9f13fc3e-d30d-4cbe-9088-9aeceb8f8202)

# Data Exploration
  1. Gender Distribution - About half of the customers in our data set are male while the other half are female

  ![image](https://github.com/user-attachments/assets/f62ee4c7-7281-46c2-a953-02ff5a5155bb)

  2. Partner and dependent status - About 50% of the customers have a partner, while only 30% of the total customers have dependents.
     customers who have a partner, only about half of them also have a dependent, while other half do not have any independents. Additionally, as expected, among the customers who do not have any partner, a majority (80%) of them do not have any dependents .

![image](https://github.com/user-attachments/assets/ad7dc8f6-d7bc-4362-b472-4597f294d7be)

## Customer Account Information: the tenure and contract

  ![image](https://github.com/user-attachments/assets/4fea137d-00b3-4a14-bbd0-ddf89b432682)

  most of the monthly contracts last for 1-2 months, while the 2 year contracts tend to last for about 70 months. This shows that the customers taking a longer contract are more loyal to the company and tend to stay with it for a longer period of time.  
![image](https://github.com/user-attachments/assets/11df755d-1cf7-4950-882c-625ffcf8725a)

## The correlation plot for Predictor variable (Churn) and the interaction with other important variables .

![image](https://github.com/user-attachments/assets/f10e6ea8-bbd8-4c45-86f8-7a691c08b1a3)

## Churn by Monthly Charges: Higher % of customers churn when the monthly charges are high.

![image](https://github.com/user-attachments/assets/3ecb98df-5ed7-476f-972c-c82061f04209)

# predictive models :

1. Logistic Regression Model :
   Acurcy : 0.8069096071935636
   ![image](https://github.com/user-attachments/assets/ece4257d-da46-4068-84a8-9df52d1efd4f)

2. Support Vecor Machine (SVM) Model
   Acurcy : 0.7991483321504613
   ![image](https://github.com/user-attachments/assets/96a61f4c-5d27-4cf8-9202-e4c2c8adf886)
   
   SVM I was able to increase the accuracy to upto 82%. However, we need to take a deeper look at the true positive and true negative rates, including the Area Under the Curve (AUC) for a better prediction

4. ADA Boost Model
   Acurcy : 0.8019872249822569
   ![image](https://github.com/user-attachments/assets/6d438595-3f87-4457-ba76-5fae4917ce01)

5. XG Boost Model
   Acurcy : 0.07877927608232789

   ![image](https://github.com/user-attachments/assets/06b62322-99bb-4b24-8e2b-2e1762c2b605)

   XG Boost I was able to increase the accuracy on test data to almost 83%. Clearly, XG Boost is a winner among all other techniques. XG Boost is a slow learning model and is based on the concept of Boosting


   


