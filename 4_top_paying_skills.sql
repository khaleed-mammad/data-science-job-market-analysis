/*
Question: What are the highest-paying skills for Data Scientists?
- Identify the top 5 skills associated with the highest average salaries in Data Scientist job postings.
- Ensure only job postings with specified annual salaries are considered.
- Exclude skills that appear in fewer than 5 job postings to ensure reliability.
- Why? Helps job seekers understand which skills are most financially valuable in the job market.
*/

SELECT
    skills,
    ROUND(AVG(job_postings_fact.salary_year_avg),2) AS average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Scientist'  AND salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY average_salary DESC
LIMIT 5;