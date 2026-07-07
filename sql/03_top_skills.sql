SELECT
    LOWER(TRIM(unnest(string_to_array(s.job_skills, ', ')))) AS skill,
    COUNT(*) AS jobs,
    ROUND(COUNT(*) * 100.0 /(SELECT COUNT(*) FROM uk_data_jobs),1) AS percentage
FROM uk_data_jobs d
JOIN job_skills s
    ON d.job_link = s.job_link
GROUP BY skill
ORDER BY jobs DESC
LIMIT 20;