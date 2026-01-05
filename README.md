# SQL Sales Analytics: Northwind Traders
A relational database project focused on transforming raw business data into actionable insights through structured schema design and SQL analysis.

---

## Tools & Technologies
* Engine: SQLite 3
* Interface: DB Browser for SQLite
* SQL Concepts: Relational Mapping (PK/FK), Multi-table JOINs, Simple Aggregations (`SUM`, `COUNT`, `GROUP BY`), and Date String Manipulation.

---

## What this Project Currently Covers
* Database Normalization: Converted flat CSV files into a relational schema.
* Relational Integrity: Defined Primary Keys and Foreign Keys with `ON UPDATE CASCADE` and `ON DELETE RESTRICT` rules.
* Date Formatting: Handled dates stored as text strings (e.g., `1997-06-16`).
* Business Discovery: Performed initial aggregations to identify top-performing products, employees, and shippers.

---

## Planned Improvements
* Business KPIs: Calculating Profit Margins, Average Order Value (AOV), and Repeat Purchase Rates.
* Advanced SQL: Implementing CTEs (Common Table Expressions) and Window Functions for year-over-year growth.
* Data Visualization: Connecting this SQLite database to Power BI/Tableau to build an interactive sales dashboard.

---

## Repository Structure
* `data`: The data used for this project (in CSV).
* `NorthwindProject.db`: The fully functional SQLite database file.
* `schema.sql`: Clean SQL script containing the `CREATE TABLE` and relationship logic.
* `queries.sql`: A collection of business-driven SQL scripts with detailed documentation.

---

## Data Source & Credit
* Source: This project utilizes the Northwind Traders dataset, a standard sample dataset used for SQL training.
* Disclaimer: All credit for the dataset belongs to the original creators. I am using this strictly for learning, practice, and non-commercial purposes. If there are any copyright concerns, I will update or remove the repository immediately upon request.

---

## Results
Initial findings from the current analysis:
1. Shipping Volume: Successfully identified which shipping partners handle the highest volume of orders to optimize logistics.
2. Sales Concentration: Found that a small percentage of products contribute to the majority of total revenue.
3. Employee Impact: Identified the top-performing sales representatives based on total order value generated.

Detailed SQL code for these results can be found in the `analysis_queries.sql` file.

---

## Notes
This project exists to show learning progress. Deeper analytics will be added as I continue building the project.

