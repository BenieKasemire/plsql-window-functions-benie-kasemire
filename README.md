# PL/SQL Window Functions - Goma Fresh Foods Analysis

## Student Information
- **Name:** Benie Kasemire
- **Course:** Database Development with PL/SQL (INSY 8311)
- **Instructor:** Eric Maniraguha
- **Submission Date:** 29th September 2025

## Business Problem
Goma Fresh Foods supermarket needs to identify top products per region, analyze customer frequency, and segment customers for targeted marketing campaigns.

## Database Schema
- **customers:** customer_id (PK), name, region  
- **products:** product_id (PK), name, category  
- **transactions:** transaction_id (PK), customer_id (FK), product_id (FK), sale_date, amount  

**Database Script:** [tables.sql](database/tables.sql)  
**ER Diagram:**  
![ER Diagram](database/er_diagram.png)

---

## View Data in each Table
**Customers Table:**  
![Customers](screenshots/customers.png)

**Products Table:**  
![Products](screenshots/products.png)

**Transactions Table:**  
![Transactions](screenshots/transactions.png)

---

## Window Functions Implementation

### 1. Ranking: Use case → Top N customers by revenue
- **Script:** [ranking.sql](scripts/ranking.sql)  
- **Functions:** ROW_NUMBER(), RANK(), DENSE_RANK(), PERCENT_RANK()  
- **Result:**  
![Ranking Results](screenshots/1-ranking.png)

---

### 2. Aggregate: Use case → Running totals & trends
- **Script:** [aggregation.sql](scripts/aggregation.sql)  
- **Functions:** SUM(), AVG(), MIN(), MAX() with ROWS vs RANGE  
- **Result:**  
![Aggregate Results](screenshots/2-aggregate.png)

---

### 3. Navigation: Use case → Period-to-period analysis
- **Script:** [navigation.sql](scripts/navigation.sql)  
- **Functions:** LAG(), LEAD() with growth calculations  
- **Result:**  
![Navigation Results](screenshots/3-navigation.png)

---

### 4. Distribution: Use case → Customer segmentation
- **Script:** [distribution.sql](scripts/distribution.sql)  
- **Functions:** NTILE(4), CUME_DIST()  
- **Result:**  
![Distribution Results](screenshots/4-distribution.png)

---

## Key Findings
1. [Insert finding #1]  
2. [Insert finding #2]  
3. [Insert finding #3]  

---

## References
1. [Insert academic reference #1]  
2. [Insert academic reference #2]  
... (total 10 references)

---

## Academic Integrity Statement
"All sources were properly cited. Implementations and analysis represent original work. No AI-generated content was copied without attribution or adaptation."
