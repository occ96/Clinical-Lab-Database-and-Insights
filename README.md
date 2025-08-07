# Clinical-Lab-Database-and-Insights


---

# Database Schema

- **patients** – demographic info (ID, name, age, sex)
- 
- **lab_tests** – test metadata (name, type, normal range)
- 
- **test_orders** – date a test was ordered and fulfilled
- 
- **lab_results** – actual patient test results

> Fully normalized design using foreign keys to ensure referential integrity. 

---

## Sample Insights (located in `analytics/`)

| Query File                | Description |
|---------------------------|-------------|
| `abnormal_results.sql`    | Detect patients with test results outside normal range |
| `top_tests.sql`           | Identify top 5 most ordered tests |
| `turnaround_time.sql`     | Calculate average lab processing time per test |
| `positive_covid.sql`      | Track COVID-positive test results over time |
| `multi_abnormal.sql`      | List patients with 2+ abnormal test results |
| `orders_by_sex.sql`       | Analyze test ordering trends by gender |

--

## 🛠️ How to Use

### 1. Create Database
```sql
CREATE DATABASE clinical_lab;
USE clinical_lab;

# Skills Demonstrated

-Relational database design using MySQL

-SQL for data cleaning and insight generation

-Business intelligence for healthcare settings

-Analytical storytelling through SQL
