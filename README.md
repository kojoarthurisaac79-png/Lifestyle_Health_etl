 Lifestyle Health Database Project

 Project Overview

The Lifestyle Health Database Project explores how everyday habits — such as diet, exercise, smoking, and alcohol consumption — influence an individual’s health risk.
Using a synthetic dataset named Lifestyle_and_Health_Risk_Prediction_Synthetic_Dataset.csv, the project aims to analyze lifestyle patterns and uncover insights using Python (Pandas) for data cleaning and MySQL for data storage and querying.



 Objectives
	•	To build an ETL pipeline that extracts, cleans, and loads lifestyle and health data into MySQL.
	•	To explore relationships between lifestyle behaviors and health risk levels.
	•	To perform SQL-based data analysis through structured queries.
	•	To practice data engineering concepts and database design using a real-world scenario.



 Dataset Description

Dataset name: Lifestyle_and_Health_Risk_Prediction_Synthetic_Dataset.csv
Database name: lifestyle_health_db

Key features include:
	•	age, weight, height → integer values representing demographics
	•	sleep, bmi → float values showing sleep hours and body mass index
	•	exercise, sugar_intake, smoking, alcohol, married, profession, health_risk → categorical features describing lifestyle and occupation

The dataset combines numerical and categorical data to support both descriptive and analytical SQL queries.



 Tools and Technologies
	•	Python (Pandas): for data exploration and cleaning
	•	MySQL: for structured data storage and querying
	•	SQL: for data analysis and insights extraction
	•	CSV files: for data import/export
	•	Jupyter / PyCharm: for running the ETL pipeline



 ETL Process Summary
	1.	Extract:
The dataset was imported into Python from a CSV file using Pandas.
	2.	Transform:
	•	Handled missing values and inconsistent data.
	•	Verified data types for each column.
	•	Standardized categorical entries (Yes/No, High/Low, etc.).
	3.	Load:
The cleaned data was stored in a MySQL table named lifestyle_health_db.
An auto-increment ID column was added to ensure unique record identification.

 Insights and Findings
	•	Individuals with higher BMI and lower sleep hours are more likely to have High Health Risk.
	•	Profession and exercise frequency show strong influence on BMI and sleep habits.
	•	Lifestyle habits such as smoking and alcohol consumption tend to overlap with High Risk categories.
	•	Data aggregation and SQL grouping provide clear visibility into population health patterns.



 Skills Demonstrated
	•	SQL (queries, aggregation, subqueries, joins, and data cleaning)
	•	Data modeling and table creation in MySQL
	•	ETL pipeline development in Python
	•	Data analysis and database design
	•	Practical understanding of health-related datasets



 Future Improvements
	•	Integrate visualization tools such as Power BI or Tableau for health dashboards.
	•	Implement predictive modeling (e.g., Logistic Regression for risk classification).
	•	Automate ETL with Airflow or a similar scheduler.
	•	Host database on AWS RDS for cloud accessibility.



 Author

Isaac Arthur
Aspiring Data Engineer | Python & SQL Enthusiast | Passionate about Data-Driven Insights
