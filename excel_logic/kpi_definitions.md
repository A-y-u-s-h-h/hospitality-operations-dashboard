# KPI Definitions and Meaning

## Capacity & Demand (MI)
- **Total Demand (mins):** Total operational workload minutes.
- **Total Capacity (mins):** Total available staff minutes.
- **Net Capacity Shortfall:** Capacity - Demand (negative = under-capacity).
- **Days Under Capacity:** Count of days where shortfall < 0.
- **Worst Day Capacity Gap:** Most negative daily gap.

## Service Operations (Assignments)
- **Total Requests:** Total assigned service records.
- **Completed / Open:** Based on is_completed flag.
- **Completion Rate:** Completed / Total.
- **Avg Resolution Time (mins):** Average of resolution_minutes for completed.
- **Median Resolution Time (mins):** Median of completed resolution times.
- **% ≤15 mins / ≥31 mins:** Distribution of completed requests in buckets.

## Service Requests (SLA & Quality)
- **SLA Breach Rate (%):** % of completed requests exceeding expected_minutes.
- **Worst SLA Service:** Service type with highest breach percentage.
- **Avg Expected vs Actual:** Shows whether SLAs are realistic.
