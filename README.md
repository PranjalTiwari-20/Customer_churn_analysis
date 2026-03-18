# Customer_churn_analysis
Customer Churn Analysis & Prediction using Python, AWS(S3, Athena, Glue), Ml and PowerBI
## Project Overview

This project focuses on analyzing customer churn behavior and identifying key factors that lead customers to leave a service. Using Python, SQL S3, (AWS Athena), and Power BI, the project delivers both predictive modeling and business insights to help organizations reduce churn and improve retention strategies.

## Objectives

Understand customer behavior and churn patterns

Identify high-risk customers

Build predictive models for churn

Provide business-driven insights using dashboards

## Tools & Technologies

Python: Pandas, NumPy, Matplotlib, Seaborn

Machine Learning: Scikit-learn (Logistic Regression, Random Forest)

SQL: AWS Athena

Cloud: AWS S3

Visualization: Power BI

## Project Workflow
1️⃣ Data Collection & Understanding

Dataset contains 64K+ customer records

Features include:

Demographics (Age, Gender)

Usage behavior (Usage Frequency, Support Calls)

Financial behavior (Payment Delay, Total Spend)

Subscription details (Plan, Contract Length)

2️⃣ Data Cleaning & Preprocessing

Handled categorical variables using encoding

Removed unnecessary columns (CustomerID)

Created new features like:

Age Groups

Customer Segments

Delay Groups

3️⃣ Exploratory Data Analysis (EDA)

Key patterns discovered:

Higher payment delays → higher churn

Customers with more support calls → more churn

Monthly contracts → highest churn

Basic plan users → highest churn

4️⃣ Machine Learning Models
Model	Accuracy
Logistic Regression	~83%
Random Forest	~99%

## Model Improvement & Data Leakage Handling

During model evaluation, the Random Forest model initially achieved an accuracy of ~99%, which indicated potential overfitting or data leakage.

Further analysis revealed that the feature "Payment Delay" had a disproportionately high influence on predictions, as it is strongly correlated with churn behavior.

To ensure model reliability:

The feature Payment Delay was removed

The model was retrained and evaluated again

After this adjustment:

Accuracy reduced to ~78%, indicating a more realistic and generalizable model

This step ensured that the model learns genuine patterns rather than relying on direct indicators of churn.

Feature importance showed:

Payment Delay as the strongest factor

Followed by Support Calls and Tenure

5️⃣ SQL Analysis (AWS Athena)

Performed business queries such as:

Churn rate by subscription type

Churn by contract length

Payment delay impact

Customer segmentation analysis

6️⃣ Power BI Dashboard

Created an interactive dashboard to visualize insights:

Key Features:

KPI Cards (Total Customers, Churn Rate, Revenue)

Churn by Subscription Plan

Churn by Contract Type

Payment Delay Impact

Support Calls Trend

Customer Segmentation

## Key Insights
## Payment Delay
Customers with high payment delays have a churn rate of ~76.6%, while customers with low delays have only ~10.07% churn, making payment behavior the strongest predictor of churn.

🔴 1. Payment Delay (STRONGEST INSIGHT)

Customers with high payment delays have a churn rate of ~76.6%, while customers with low delays have only ~10.07% churn, making payment behavior the strongest predictor of churn.

🔴 2. Contract Type

Customers on monthly contracts have the highest churn rate (~51.6%), compared to annual (~46.2%) and quarterly (~44.0%) plans.

🔴 3. Subscription Plan

Basic plan customers show the highest churn (~48.3%), followed by standard (~47.3%) and premium (~46.5%) users.

🔴 4. Support Calls Trend

Churn rate increases significantly after 4–5 support calls, indicating that frequent support interactions are a strong signal of customer dissatisfaction.

🔴 5. Customer Segment

Low-value customers have a higher churn rate (~52.18%) compared to high-value customers (~43.19%).

🔴 6. Age Group

Senior customers show the highest churn (~49.6%), while adults (~44.4%) and young users (~44.9%) have relatively lower churn rates.

🔴 7. Model Insight

After removing data leakage from the 'Payment Delay' feature, model accuracy dropped from ~99% to ~78%, resulting in a more reliable and generalizable model.

## Business Recommendations

Improve features for Basic plan users

Reduce churn by managing payment delays

Focus on high-risk customers (frequent support calls)

Encourage users to switch to long-term contracts

## Dashboard Preview

<img width="1296" height="741" alt="Screenshot 2026-03-18 205307" src="https://github.com/user-attachments/assets/80c7b64a-d126-45a7-81b9-d57f8893e902" />


🚀 Conclusion

This project demonstrates how data analytics and machine learning can be combined with cloud tools and visualization to solve real-world business problems. It provides actionable insights to reduce churn and improve customer retention strategies.
