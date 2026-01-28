-- Tables created and loaded using MySQL Workbench import wizard / CSV import.
-- Expected tables:
-- service_requests, service_assignments, staff_shifts, quality_checks
-- After import, validate row counts using:
SELECT 'service_requests' AS table_name, COUNT(*) AS row_count FROM service_requests
UNION ALL
SELECT 'service_assignments', COUNT(*) FROM service_assignments
UNION ALL
SELECT 'staff_shifts', COUNT(*) FROM staff_shifts
UNION ALL
SELECT 'quality_checks', COUNT(*) FROM quality_checks;
