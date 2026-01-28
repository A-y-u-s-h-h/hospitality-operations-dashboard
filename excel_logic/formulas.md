# Key Formulas Used (Excel)

## KPI Summary formulas (examples)

### Completion Rate
Completed Requests / Total Requests

### Median Resolution Time (Completed only)
Median used to reduce skew from long-tail resolution times.
Calculated via helper column approach when FILTER() was unavailable.

### SLA Breach Rate (%)
Average of sla_breach_flag (0/1) gives breach percentage:
AVG(0/1) → % breached

## Why pivots were used
Pivots were used for:
- stable aggregations (count, average)
- service-level breakdowns
- chart-ready summaries

Formulas were used where pivots do not support the statistic (e.g., median).
