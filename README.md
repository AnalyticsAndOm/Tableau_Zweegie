# Zweegie Executive Dashboard
- Github repository at: <a name="link"></a> https://github.com/AnalyticsAndOm/Tableau_Zweegie
- Dashboard Name: Zweegie Executive Dashboard
- Dashboard Link: <a name="dataset_link"></a> https://public.tableau.com/app/profile/omkar.sadawarte/viz/ZweegieExecutiveDashboard/Dashboard2
## Project Description
In this project, I have designed an Executive dashboard for an online food aggrigator company Zweegie. I have folled the steps of the data analysis process: * ask, prepare, process, analyze, share, and act *.

## 1. Introduction <a name="introduction"></a>
- The dashboard has been designed in Tableau public with file name given above. To view this file, open this [link](https://public.tableau.com/app/profile/omkar.sadawarte/viz/ZweegieExecutiveDashboard/Dashboard2). Related files are in the [repository](https://github.com/AnalyticsAndOm/Tableau_Zweegie).

###1.1. Problem Statement 
Design an executive dashboard for Zweegie that shows:
1. Total Reveue for the year (KPI Card)
2. Total orders for the year (KPI Card)
3. Total profits for the year (KPI Card)
4. Total Number of customers by year (KPI Card)
5. Top N states by revenue (bar chart)
6. Bottom N states by revenue (bar chart)
7. Statewise revenue and city wise profits (map chart)
8. Quaterly revenue vs profit. (stacked bar chart)
9. Bottom N managers by profitability (bar chart)
10. Top N managers by profitability (bar chart)
11. Monthly profit trends for each year (line chart)

## 2. Description of the dataset 
The dataset consists of total 3 .csv files that provide details regarding resaturants, orders, manager name, customer id, cutomer type, order date, number or orders, order amount, commission charged on orders, delivery fee charged for the order, rider fee for the order.

### 2.1. Introduction to dataset
- This dummy data set contains data for approx 20000 orders placed from  200 restaurants accross 50 cities in India. The data has been stored in separate tables one for each customer details, restaurants details, and order details . It includes information about esaturants, orders, manager name, customer id, cutomer type, order date, number or orders, order amount, commission charged on orders, delivery fee charged for the order, rider fee for the order.
- Refer the attached link here for the data dictionary. 

### 2.2. Table of dataset and contents
- Below table consists of details of table name and its features. 
  
| Table Name                    | Features |
| ----------------------------- | --------------------------------------------------------------- |
| customers          | "c_id, c_fname, c_lname, c_city, c_state, c-type" |
| restaurant         | rid, r_name, r_city, r_state, r_commission                                        |
| orders         | "ord_ date, ord_id, cus_id, rest_id, qty, amount, disc, comm, dist, " |
| manager              | man_id, man_name, man_city, man_state                                       |

