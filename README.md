### **SaaS Churn Analysis (SQL)**



#### Project Overview



This project analyses customer churn in a SaaS company using SQL.

The objective is to understand churn patterns and identify factors that may contribute to customer churn.



The analysis compares product usage and support ticket activity between churned and retained customers.



##### Dataset



**Source:** Kaggle – SaaS Subscription \& Churn Analytics Dataset



**Data includes:**

* Customer accounts
* Subscriptions and plan tiers
* Feature usage
* Support tickets
* Churn events



Churn is identified using actual churn event data.



##### Tools used



* SQL (MySQL / SQL Server)
* MySQL Workbench / SQL Server Management Studio
* GitHub



##### Project Structure



Saas-churn-analysis-sql/

├── sql/

│   ├── 01\_churn\_definition.sql

│   ├── 02\_summary\_views.sql

│   ├── 03\_analysis\_queries.sql

│

├── insights/

│   └── findings.md

│

└── README.md



##### Analysis Performed



Defined churned customers using churn events

###### 

###### Created summary views for:



* Subscriptions
* Feature usage
* Support tickets
* Analysed churn by plan tier and country
* Compared usage and support ticket behaviour for churned vs retained customers
* Built a basic churn risk classification (High / Medium / Low)



##### Key Findings



* Product usage alone did not explain churn.
* Churned customers often had similar or higher usage than retained customers.
* Churned accounts raised more support tickets overall.
* Support ticket activity showed a stronger relationship with churn than usage.
* Improving customer support experience may help reduce churn.



Detailed findings are available in insights/findings.md.



##### Conclusion



* This project demonstrates how SQL can be used to analyse churn and customer behaviour in a SaaS business.
* It follows a simple, end-to-end data analysis workflow from raw data to insights.

