/*
Question: What are the most in-demand skills for Data Scientists?
- Identify the top 5 skills that appear most frequently in Data Scientist job postings.
- Analyze all job postings, regardless of job type or location.
- Retrieve skills from the skills mapping tables to ensure accuracy.
- Why? Provides insights into the most valuable skills for Data Scientists, helping job seekers understand which skills are in the highest demand.
*/

SELECT
    DISTINCT skills,
    COUNT(skills) AS num_of_jobs
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Scientist' 
GROUP BY skills
ORDER BY num_of_jobs DESC
LIMIT 5;
