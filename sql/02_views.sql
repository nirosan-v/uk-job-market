-- All UK job postings
CREATE OR REPLACE VIEW uk_jobs AS
SELECT *
FROM linkedin_job_postings
WHERE search_country = 'United Kingdom';

-- UK data & analytics jobs
CREATE OR REPLACE VIEW uk_data_jobs AS
SELECT *
FROM uk_jobs
WHERE
    LOWER(job_title) LIKE '%data analyst%'
    OR LOWER(job_title) LIKE '%data engineer%'
    OR LOWER(job_title) LIKE '%data scientist%'
    OR LOWER(job_title) LIKE '%data architect%'
    OR LOWER(job_title) LIKE '%data consultant%'
    OR LOWER(job_title) LIKE '%analytics engineer%'
    OR LOWER(job_title) LIKE '%bi analyst%'
    OR LOWER(job_title) LIKE '%bi developer%'
    OR LOWER(job_title) LIKE '%business intelligence%'
    OR LOWER(job_title) LIKE '%power bi%'
    OR LOWER(job_title) LIKE '%reporting analyst%'
    OR LOWER(job_title) LIKE '%mi analyst%'
    OR LOWER(job_title) LIKE '%insight analyst%';