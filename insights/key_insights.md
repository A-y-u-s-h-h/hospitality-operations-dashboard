# Key Insights & Recommendations

## Insights
- Completion rate is high (88%), but SLA breach rate is also high (~88%),
  suggesting requests are being closed but often late.
- FrontDesk shows the highest SLA breach rate, indicating a process/staffing bottleneck.
- Actual resolution time exceeds expected time across all services.
- Capacity shortfall is persistent across the observed period, with a worst-day shortfall of ~-4,137 minutes.
- A significant portion of completed requests take over 31 minutes, contributing to SLA misses.

## Recommendations
1. Investigate FrontDesk workflow and staffing patterns (highest SLA breaches).
2. Recalibrate SLA expected_minutes using actual performance distributions.
3. Add operational alerting for requests crossing 30 minutes.
4. Use daily demand vs capacity planning to allocate staff to peak days.
