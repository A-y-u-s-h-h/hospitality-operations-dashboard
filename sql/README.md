# SQL Layer (Data Preparation & Validation)

This folder contains SQL scripts used to prepare the operational data
before it was exported to Excel for KPI calculation and dashboarding.

## Purpose of SQL in this project
SQL was used to:
- Validate raw operational data
- Create analysis-ready fields (resolution time, SLA breach flag)
- Aggregate metrics prior to Excel
- Ensure consistency and auditability of KPIs

## Workflow
1. Raw CSV files imported into MySQL
2. Views created for cleaned and enriched data
3. Aggregations validated using SQL
4. Output exported to Excel / Power Query

## Files in this folder
- `01_setup_database.sql` – database initialization
- `02_load_tables.sql` – data loading & validation checks
- `03_views_and_kpis.sql` – KPI logic and derived fields

SQL acts as the **single source of truth**, while Excel focuses on
presentation, slicing, and MI-style reporting.
