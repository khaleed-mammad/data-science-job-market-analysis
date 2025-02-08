# Data Science Job Market Analysis

## Overview
This project analyzes **Data Scientist job postings** to extract valuable insights about:
- Top-paying remote Data Scientist jobs
- Essential skills required for high-paying roles
- Most in-demand skills in the job market
- Highest-paying skills for Data Scientists

## Queries & Insights

---

## 1. Top 10 Highest-Paying Remote Data Scientist Jobs
### Query:
This query identifies the **top 10 highest-paying** remote Data Scientist positions, focusing on:
- Full-time or stable roles (excluding part-time and contractor positions)
- Jobs with a specified salary  

### Results (Top 3):
| Job Title                                     | Company Name         | Job Type  | Hourly Salary ($) |
|----------------------------------------------|----------------------|----------|------------------|
| Staff Data Scientist/Quant Researcher       | Selby Jennings      | Full-time | 264.42          |
| Staff Data Scientist - Business Analytics   | Selby Jennings      | Full-time | 252.40          |
| Revenue Cycle Data Scientist                | Umbrex              | Full-time | 187.50          |

### Key Takeaways:
- High-paying Data Science roles exceed $150/hr, with some reaching over $250/hr.
- Finance and consulting companies (e.g., Selby Jennings, Umbrex) dominate top-paying roles.
- Leadership positions (e.g., "Head of Data Science") tend to pay more.

---

## 2. Skills Required for Top-Paying Data Scientist Jobs
### Query:
This query extracts the **key skills** associated with the **top 10 highest-paying** Data Scientist jobs.

### Results (Top 3):
| Job Title                                 | Required Skills                               | Hourly Salary ($) |
|-------------------------------------------|----------------------------------------------|------------------|
| Staff Data Scientist/Quant Researcher     | Python, SQL                                 | 264.42          |
| Revenue Cycle Data Scientist              | Python, R, SAS                              | 187.50          |
| Director Level - Product Management       | AWS, Azure, Keras, TensorFlow, PyTorch      | 153.85          |

### Key Takeaways:
- Python and SQL are the most frequent skills in top-paying jobs.
- Machine Learning frameworks (TensorFlow, PyTorch) are key for director-level roles.
- Cloud platforms (AWS, Azure) are crucial for senior leadership roles.

---

## 3. Most In-Demand Skills for Data Scientists
### Query:
This query identifies the **top 5 skills that appear most frequently** in **all** Data Scientist job postings.

### Results:
| Skill      | Number of Job Postings |
|-----------|----------------|
| Python    | 114,016        |
| SQL       | 79,174         |
| R         | 59,754         |
| SAS       | 29,642         |
| Tableau   | 29,513         |

### Key Takeaways:
- Python is the dominant programming language, appearing in over 100,000 job postings.
- SQL is essential for handling large-scale databases.
- Tableau is widely used for data visualization.
- R and SAS remain valuable, particularly in analytics and statistics-heavy roles.

---

## 4. Highest-Paying Skills for Data Scientists
### Query:
This query determines the **top 5 highest-paying** skills by analyzing job postings with salary data.

### Results:
| Skill     | Average Salary ($) |
|----------|------------------|
| Asana    | 215,477          |
| Airtable | 201,142          |
| RedHat   | 189,500          |
| Watson   | 187,417          |
| Elixir   | 170,823          |

### Key Takeaways:
- Project management tools (Asana, Airtable) are associated with top salaries.  
- Cloud and DevOps skills (RedHat, Watson) are crucial for high-paying Data Science roles.  
- Functional programming (Elixir) is emerging as a valuable skill.  

---

## Conclusion & Career Recommendations
### Key Insights
- Python, SQL, and Machine Learning skills are essential for high-paying roles.  
- Cloud platforms and AI frameworks give candidates a salary advantage.  
- Project management and DevOps skills are becoming increasingly valuable.  

### Next Steps for Job Seekers
- Master Python, SQL, and Machine Learning frameworks  
- Learn cloud technologies (AWS, Azure, GCP)  
- Gain proficiency in data visualization tools (Tableau, Power BI)  
- Explore DevOps tools (Docker, Kubernetes, RedHat)  

---

## Technical Details
- **Database**: PostgreSQL  
- **Tables Used**: `job_postings_fact`, `skills_job_dim`, `skills_dim`, `company_dim`  
- **Joins Used**: INNER JOIN, LEFT JOIN  
- **Aggregations Used**: COUNT, AVG, STRING_AGG  
