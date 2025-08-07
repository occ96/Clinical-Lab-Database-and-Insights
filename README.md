# Clinical Lab Analytics with SQL (MySQL)

This project models a clinical lab database and provides actionable SQL insights on patient diagnostics, lab tests, and operational efficiency. Real-world healthcare scenarios are simulated using MySQL. These scenarios range from database schema design and data insertion to business-critical analytical queries.

---

# Project Structure

---

# Database Schema

- **patients** – demographic info (ID, name, age, sex)
  
- **lab_tests** – test metadata (name, type, normal range)
  
- **test_orders** – date a test was ordered and fulfilled
  
- **lab_results** – actual patient test results

> Fully normalized design using foreign keys to ensure referential integrity. 

---

# Sample Insights (located in `analytics/`)

| Query File                  | Description |
|-----------------------------|-------------|
| `abnormal_results.sql`      | Detect patients with test results outside normal range |
| `top_five_tests.sql`        | Identify top 5 most ordered tests |
| `turnaround_times.sql`      | Calculate average lab processing time per test |
| `positive_covid.sql`        | Track COVID-positive test results over time |
| `multi_abnormal_results.sql`| List patients with 2+ abnormal test results |
| `group_by_sex_and_tests.sql`| Analyze test ordering trends by gender |

---

# How to Use

### 1. Create Database
```sql
CREATE DATABASE clinical_lab;
USE clinical_lab;
```

### 2. Create Tables

```sql
-- Run this inside your SQL client or terminal
SOURCE schema.sql;
```

### 3. Insert Sample Data (use `data_insert.sql`)

```sql
-- Run this to populate the tables
SOURCE insert.sql;
```

### 4. Run Actionable Insight Queries
```sql
-- Example: Run to get all abnormal lab results
SOURCE analytics/abnormal_results.sql;

-- Example: Get top 5 most ordered lab tests
SOURCE analytics/top_tests.sql;

-- Example: Get average turnaround time by test
SOURCE analytics/turnaround_time.sql;
```


# Skills Demonstrated

-Relational database design using MySQL

-SQL for data cleaning and insight generation

-Business intelligence for healthcare settings

-Analytical storytelling through SQL


