-- CUSTOMER CHURN ANALYSIS (AWS ATHENA SQL)
-- =========================================

-- 1. Overall Churn Rate
-- Calculate total customers and churn percentage
SELECT 
    COUNT(*) AS total_customers,
    SUM(Churn) AS churned_customers,
    ROUND(100.0 * SUM(Churn) / COUNT(*), 2) AS churn_rate
FROM churn_data;


-- 2️. Churn by Subscription Type
-- Identify churn across different plans
SELECT 
    Subscription_Type,
    COUNT(*) AS total,
    SUM(Churn) AS churned,
    ROUND(100.0 * SUM(Churn) / COUNT(*), 2) AS churn_rate
FROM churn_data
GROUP BY Subscription_Type;


-- 3️. Churn by Contract Length
-- Compare churn across contract durations
SELECT 
    Contract_Length,
    ROUND(AVG(Churn)*100,2) AS churn_rate
FROM churn_data
GROUP BY Contract_Length;


-- 4️. Payment Delay Impact (MOST IMPORTANT)
-- Analyze how payment delays affect churn
SELECT 
    CASE 
        WHEN Payment_Delay > 20 THEN 'High Delay'
        WHEN Payment_Delay > 10 THEN 'Medium Delay'
        ELSE 'Low Delay'
    END AS delay_group,
    ROUND(AVG(Churn)*100,2) AS churn_rate
FROM churn_data
GROUP BY 1;


-- 5️. Support Calls vs Churn
-- Identify dissatisfaction through support calls
SELECT 
    Support_Calls,
    ROUND(AVG(Churn)*100,2) AS churn_rate
FROM churn_data
GROUP BY Support_Calls
ORDER BY Support_Calls;


-- 6️. Customer Segmentation (Based on Spend)
-- Segment customers into high and low value
SELECT 
    CASE 
        WHEN Total_Spend > 500 THEN 'High Value'
        ELSE 'Low Value'
    END AS customer_segment,
    COUNT(*) AS total_customers,
    ROUND(AVG(Churn)*100,2) AS churn_rate
FROM churn_data
GROUP BY 1;


-- 7️. Age Group Analysis
-- Understand churn across demographics
SELECT 
    CASE 
        WHEN Age < 25 THEN 'Young'
        WHEN Age < 40 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group,
    ROUND(AVG(Churn)*100,2) AS churn_rate
FROM churn_data
GROUP BY 1;


-- 8️. Tenure Analysis
-- Analyze churn based on customer lifetime
SELECT 
    CASE 
        WHEN Tenure < 12 THEN 'New'
        WHEN Tenure < 36 THEN 'Mid'
        ELSE 'Long-term'
    END AS tenure_group,
    ROUND(AVG(Churn)*100,2) AS churn_rate
FROM churn_data
GROUP BY 1;


-- 9️. High-Risk Customer Identification (ADVANCED)
-- Combine payment delay and support calls
SELECT 
    CASE 
        WHEN Payment_Delay > 20 AND Support_Calls > 5 THEN 'High Risk'
        ELSE 'Normal'
    END AS risk_level,
    COUNT(*) AS customers,
    ROUND(AVG(Churn)*100,2) AS churn_rate
FROM churn_data
GROUP BY 1;