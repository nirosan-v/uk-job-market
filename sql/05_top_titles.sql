SELECT
    job_title,
    COUNT(*) AS jobs,
    ROUND(COUNT(*) * 100.0 /(SELECT COUNT(*) FROM uk_data_jobs), 1) AS percentage
FROM uk_data_jobs
GROUP BY job_title
ORDER BY jobs DESC
LIMIT 20;