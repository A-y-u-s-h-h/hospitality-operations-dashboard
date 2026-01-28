# Hospitality Operations Dashboard (Excel + SQL)

## Overview
End-to-end operational analytics project built to simulate **MI reporting** in hospitality operations.
SQL was used to prepare and validate data; Excel was used to create KPI logic and the final dashboard.

## Dashboard Preview
![Dashboard](dashboard_screenshots/operations_dashboard.png)

## Data Used
- service_requests.csv (SLA and service type performance)
- service_assignments.csv (completion + resolution time efficiency)
- staff_shifts.csv (capacity inputs)
- quality_checks.csv (data quality tracking)
- demand_capacity_daily.csv (MI demand vs capacity)

## Workflow
1. Load and validate data in SQL (MySQL)
2. Create views for analysis-ready fields (resolution_minutes, SLA flag)
3. Export CSV → import into Excel via Power Query
4. Create helper columns and pivots
5. Build KPI summary and dashboard charts

## Key KPIs
- Total Requests
- Completion Rate
- Open Requests
- Avg Resolution Time
- SLA Breach Rate
- Capacity Shortfall (daily + overall)

## Key Insights
See: `insights/key_insights.md`

## Documentation
- Helper columns: `excel_logic/helper_columns.md`
- KPI definitions: `excel_logic/kpi_definitions.md`
- SQL scripts: `/sql`

## Notes
Due to local Excel licensing restrictions, the workbook could not be exported.  
This repository provides:
- raw datasets (CSV)
- dashboard screenshots
- full logic documentation (SQL + Excel)

