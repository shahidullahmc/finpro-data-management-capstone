# finpro-data-management-capstone
End‑to‑end data pipeline for FinPro Bank, covering cleaning, OLTP/OLAP modeling, governance, security, and Tableau BI. A hands‑on demonstration of modern data management—turning raw financial data into reliable, governed insights for real‑world decision‑making.

# FinPro Data Management Capstone Project  
### End‑to‑End Data Engineering, Governance, and BI Pipeline for FinPro Bank

This repository contains the full implementation of the **FinPro Bank Data Management Capstone Project**, demonstrating how fragmented financial data can be transformed into a **clean, secure, governed, and analytics‑ready data ecosystem**.  
The project covers the complete data lifecycle — from raw data preparation to business intelligence delivery.


## Project Overview
FinPro Bank, a mid‑sized financial institution, faced challenges with siloed data, inconsistent reporting, and limited analytical capability.  
This project builds a **modern data pipeline** to solve these issues using:

- **Excel** for data cleaning and transformation  
- **SQL (OLTP)** for structured storage and operational queries  
- **SQL (OLAP)** for analytical modeling  
- **Governance & Security** for RBAC, encryption, and compliance  
- **Tableau** for dashboards, stories, and business insights  

## 👤 My Role — Data Engineer / Data Manager
As the Data Engineer/Data Manager, I was responsible for:

- Designing OLTP and OLAP schemas  
- Cleaning and transforming raw CSV/XLSX data  
- Building SQL pipelines and analytical queries  
- Implementing RBAC, encryption guidance, and governance controls  
- Creating Tableau dashboards and storyboards  
- Ensuring data quality, consistency, and reliability across all layers  

## Project Components

### **1. Data Cleaning & Transformation (Excel)**
- Standardized customer, transaction, branch, and country data  
- Fixed inconsistent formats, missing DOBs, duplicate records  
- Added calculated fields (Age, AgeGroup, BalanceCategory)

### **2. OLTP Database (MySQL)**
- Created structured tables:  
  `customer_data`, `transaction_data`, `branches`, `countries`, `account_type`, `us_cities`
- Performed inserts, updates, deletes  
- Enforced PK/FK relationships and data integrity

### **3. OLAP Warehouse**
- Designed fact/dimension model  
- Implemented:  
  - `ROLLUP`  
  - `CUBE`  
  - `GROUPING SETS`  
  - Materialized views  
- Built analytical queries for closing balance, transaction counts, and customer segmentation

### **4. Data Governance & Security**
- Implemented RBAC for `fin_manager`  
- Defined column‑level encryption guidelines  
- Assigned table‑specific privileges  
- Ensured compliance and controlled access

### **5. Tableau Dashboards & BI**
Delivered interactive dashboards for:
- Customer‑wise closing balance  
- Branch performance  
- Country‑wise transaction count  
- Customer age and demographic insights  
- Executive storyboard for decision‑makers  

---

## Tableau Public Dashboards
(Insert your links here)

- **Customer & Branch Performance Dashboard:**  
- **Country‑Wise Transaction Analysis:**  
- **FinPro Storyboard:**  

---

## 📁 Repository Structure
