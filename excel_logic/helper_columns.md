# Helper Columns (Excel / Power Query)

This project uses helper columns to ensure reliable KPI calculation in Excel,
especially where dynamic array functions were limited.

## 1) is_completed
**Purpose:** Distinguish Open vs Completed requests consistently.
- 1 = Completed
- 0 = Open

**Logic (Power Query):**
- If completed_dt is null → 0
- Else → 1

## 2) resolution_minutes
**Purpose:** Core performance metric for resolution efficiency.
**Logic:** Duration between request_dt/assigned_dt and completed_dt in minutes.

## 3) resolution_time_bucket
**Purpose:** Enables distribution charts and SLA-style reporting.
Buckets:
- 0–15
- 16–30
- 31–60
- 60+

## 4) sla_breach_flag (service_requests)
**Purpose:** SLA compliance indicator.
- 1 = breached SLA
- 0 = met SLA

**Logic:** resolution_minutes > expected_minutes
