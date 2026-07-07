-- Main table
CREATE TABLE IF NOT EXISTS linkedin_job_postings (
    job_link TEXT PRIMARY KEY,
    last_processed_time TIMESTAMPTZ,
    got_summary BOOLEAN,
    got_ner BOOLEAN,
    is_being_worked BOOLEAN,
    job_title TEXT,
    company TEXT,
    job_location TEXT,
    first_seen DATE,
    search_city TEXT,
    search_country TEXT,
    search_position TEXT,
    job_level TEXT,
    job_type TEXT
);

-- Job summaries
CREATE TABLE IF NOT EXISTS job_summary (
    job_link TEXT PRIMARY KEY,
    job_summary TEXT,

    CONSTRAINT fk_job_summary
        FOREIGN KEY (job_link)
        REFERENCES linkedin_job_postings (job_link)
);

-- Job skills
CREATE TABLE IF NOT EXISTS job_skills (
    job_link TEXT PRIMARY KEY,
    job_skills TEXT,

    CONSTRAINT fk_job_skills
        FOREIGN KEY (job_link)
        REFERENCES linkedin_job_postings (job_link)
);
