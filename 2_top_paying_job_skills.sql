/*
Question: What skills are required for the top-paying Data Scientist jobs?
- Identify skills associated with the top 10 highest-paying remote Data Scientist roles.
- Focus on full-time or stable positions (exclude part-time and contractor roles).
- Ensure job postings have a specified salary (remove null values).
*/

WITH salary_calculated AS (
SELECT
    job_id,
    company_id,
    job_title,
    job_schedule_type,
    CASE
    WHEN salary_year_avg IS NULL THEN salary_hour_avg
    WHEN salary_year_avg IS NOT NULL THEN salary_year_avg / 2080
    END AS avg_salary_per_hour
FROM job_postings_fact
WHERE (job_work_from_home = TRUE) AND 
      (job_title_short = 'Data Scientist') AND
      (job_schedule_type NOT IN ('Part-time', 'Contractor'))
)

, top_jobs AS (
SELECT 
    job_id,
    job_title,
    company_dim.name AS company_name,
    job_schedule_type,
    avg_salary_per_hour
FROM salary_calculated
LEFT JOIN company_dim ON salary_calculated.company_id = company_dim.company_id
WHERE avg_salary_per_hour IS NOT NULL
ORDER BY avg_salary_per_hour DESC
LIMIT 10
)

SELECT
    job_title,
    STRING_AGG(DISTINCT skills, ', '),
    avg_salary_per_hour
FROM top_jobs
    LEFT JOIN skills_job_dim ON top_jobs.job_id = skills_job_dim.job_id
    LEFT JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE avg_salary_per_hour IS NOT NULL AND skills IS NOT NULL
GROUP BY top_jobs.job_title, top_jobs.avg_salary_per_hour
ORDER BY avg_salary_per_hour DESC;