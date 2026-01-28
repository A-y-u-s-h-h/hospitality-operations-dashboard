-- View: service_requests enriched
CREATE OR REPLACE VIEW vw_service_requests_enriched AS
SELECT
  request_id,
  service_type,
  priority,
  expected_minutes,
  request_dt,
  completed_dt,
  CASE WHEN completed_dt IS NULL THEN 0 ELSE 1 END AS is_completed,
  CASE 
    WHEN completed_dt IS NULL THEN NULL
    ELSE TIMESTAMPDIFF(MINUTE, request_dt, completed_dt)
  END AS resolution_minutes,
  CASE
    WHEN completed_dt IS NULL THEN NULL
    WHEN TIMESTAMPDIFF(MINUTE, request_dt, completed_dt) > expected_minutes THEN 1
    ELSE 0
  END AS sla_breach_flag
FROM service_requests;

-- KPI: overall completion and SLA breach rate
SELECT
  COUNT(*) AS total_requests,
  SUM(is_completed) AS completed_requests,
  COUNT(*) - SUM(is_completed) AS open_requests,
  ROUND(SUM(is_completed)/COUNT(*) * 100, 2) AS completion_rate_pct,
  ROUND(AVG(sla_breach_flag) * 100, 2) AS sla_breach_rate_pct
FROM vw_service_requests_enriched
WHERE is_completed = 1 OR is_completed = 0;
