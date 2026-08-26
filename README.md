Healthcare data engineering and analytics service-learning project using CMS healthcare data, PostgreSQL, Supabase, SQL, and Power BI to analyze and benchmark hospital performance.

Overview

This project was completed as part of an Introduction to Data Engineering service-learning course at Florida Gulf Coast University in partnership with Lee Health's Strategy & Innovation Division.

The project was completed by a two-person student team, with each team member contributing approximately 50 hours of service-learning work. We worked with a contact at Lee Health to understand their data needs, develop the project, review our progress, and ultimately deliver our findings and Power BI reporting to the organization.

At the time of the project, Lee Health was transitioning toward greater use of Microsoft services and Power BI reporting, moving away from paper-based tracking and Excel-heavy reporting. This made Power BI an important part of our final deliverable.

Project Goal

The goal was to use publicly available healthcare data to help Lee Health better understand how its hospital performance compared with peer hospitals and nationally recognized hospitals.

We built a structured data solution that brought together multiple hospital performance datasets, allowing us to analyze areas such as:

Patient outcomes
Readmissions
Patient experience
Healthcare-associated infections
CMS hospital ratings
Performance compared to national benchmarks
Nationally ranked hospitals

The final goal was to turn the raw healthcare data into information that could be more easily explored and used for benchmarking and decision-making.

Technologies Used
PostgreSQL — relational database
Supabase — cloud-hosted PostgreSQL database
SQL — data querying and analysis
Power BI — dashboards and data visualization
CMS Provider Data — public hospital performance datasets
U.S. News Best Hospitals Data — nationally ranked hospital benchmarking
Git & GitHub — project organization and version control
Data Engineering Workflow
CMS & Public Hospital Data
           ↓
    Data Collection
           ↓
 Data Cleaning & Organization
           ↓
 PostgreSQL / Supabase
           ↓
      SQL Analysis
           ↓
        Power BI
           ↓
Hospital Performance Benchmarking
Analysis

Our database and Power BI reporting were designed to answer questions such as:

How does Lee Health compare with other Florida hospitals?
Which hospital performance measures are below national benchmarks?
How do Lee Health's outcomes compare with nationally recognized hospitals?
How do readmission and patient experience measures compare across hospitals?
Which areas show the largest potential opportunities for improvement?
Power BI Dashboard

Power BI was used as the final reporting layer on top of the healthcare data stored and analyzed through PostgreSQL and SQL.

Top 20 Hospitals in the United States

This view provides a benchmark using nationally recognized hospitals and allows their performance metrics to be compared.

<img width="1582" height="926" alt="Top 20 Hospitals Dashboard" src="https://github.com/user-attachments/assets/0aaba6d5-5f9c-4338-bad5-75bb55ec4d40" />

Performance Compared to National Average

This view compares hospital performance measures against national benchmarks to help identify areas performing above, below, or similar to the national average.

<img width="1566" height="922" alt="Hospital Performance Compared to National Average" src="https://github.com/user-attachments/assets/53f0947c-4137-41bc-8526-2c3e230e8861" />

Deaths & Complications

This dashboard analyzes CMS deaths and complications measures to compare hospital outcomes and identify potential performance gaps.

<img width="1672" height="1312" alt="Deaths and Complications Dashboard" src="https://github.com/user-attachments/assets/9152a154-09d9-4ec6-8437-06292bb3f854" />

Service-Learning Partnership

A major part of this project involved working with a real community partner rather than completing a predefined classroom dataset exercise.

Throughout the project, we met with our Lee Health contact to discuss organizational needs, present our database progress, receive feedback, and adjust the project based on what would be most useful to the organization.

Based on Lee Health's feedback, the project became increasingly focused on creating an interactive Power BI reporting solution that could support hospital benchmarking and complement the organization's transition toward Microsoft-based reporting tools.

At the conclusion of the project, our team delivered the completed work and findings to our Lee Health contact.

My Role

As one of two students responsible for the project, I contributed approximately 50 hours of service-learning work across the project.

My work included:

Working with large public CMS healthcare datasets
Organizing healthcare data in PostgreSQL and Supabase
Developing and running SQL queries
Analyzing hospital performance and national benchmarks
Building Power BI reports and visualizations
Participating in meetings with our Lee Health partner
Adjusting the analysis based on stakeholder feedback
Helping prepare and deliver the final project to Lee Health
Data Privacy

All healthcare information used in this project came from publicly available hospital-level datasets. No patient-level data or protected health information (PHI) is included in this repository.

Project Context

Course: Introduction to Data Engineering
University: Florida Gulf Coast University
Project Type: Service-Learning / Community Partner Project
Community Partner: Lee Health — Strategy & Innovation Division
Team Size: 2 students
Service-Learning Contribution: Approximately 50 hours per student
