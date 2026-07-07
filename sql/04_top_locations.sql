SELECT
    TRIM(SPLIT_PART(job_location, ',', 1)) AS location,
    COUNT(*) AS jobs,
    ROUND(COUNT(*) * 100.0 /(SELECT COUNT(*) FROM uk_data_jobs), 1) AS percentage
FROM uk_data_jobs
GROUP BY location
ORDER BY jobs DESC
LIMIT 20;