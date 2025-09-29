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
- **File:** `database/tables.sql`
- **ER Diagram:** `database/er_diagram.png`


## View Data in each Table
- **customers:** `screenshots/customers.png`
- **products:** `screenshots/products.png`  
- **transactions:** `screenshots/transactions.png`

## Window Functions Implementation

### 1. Ranking:  Use case => Top N customers by revenue
- **File:** `scripts/ranking.sql`
- **Functions:** ROW_NUMBER(), RANK(), DENSE_RANK(), PERCENT_RANK()
- **Results:** `screenshots/1-ranking.png`

### 2. Aggregate:  Use case => Running totals & trends
- **File:** `scripts/aggregation.sql`
- **Functions:** SUM(), AVG(), MIN(), MAX() with ROWS vs RANGE
- **Results:** `screenshots/2-aggregate.png`

### 3. Navigation: Use case => Period-to-period analysis
- **File:** `scripts/navigation.sql`
- **Functions:** LAG(), LEAD() with growth calculations
- **Results:** `screenshots/3-navigation.png`

### 4. Distribution: Use case => Customer segmentation
- **File:** `scripts/distribution.sql`
- **Functions:** NTILE(4), CUME_DIST()
- **Results:** `screenshots/4-distribution.png`

## Key Findings
[2-3 key insights from the analysis]

## References
[10 proper academic references]

## Academic Integrity Statement
"All sources were properly cited. Implementations and analysis represent original work. No AI-generated content was copied without attribution or adaptation."