# Lee Health CMS Data Engineering & Analytics

A healthcare data engineering and analytics service-learning project developed in partnership with **Lee Health**, using **CMS healthcare data, PostgreSQL, Supabase, SQL, and Power BI** to analyze and benchmark hospital performance.

## Overview

This project was completed as part of an **Introduction to Data Engineering service-learning course at Florida Gulf Coast University (FGCU)** in partnership with **Lee Health's Strategy & Innovation Division**.

The project was primarily completed by a **two-person student team**, with each student contributing approximately **50 hours of service-learning work**. We worked with a contact at Lee Health throughout the project to better understand their data needs, review our progress, receive feedback, and ultimately deliver our completed analysis and Power BI reporting.

Lee Health was also in the process of expanding its use of **Microsoft services and Power BI reporting**, moving away from more manual, paper-based and Excel-heavy reporting processes. Because of this, Power BI became an important part of our final deliverable.

The project gave us the opportunity to apply data engineering concepts to a real organization's needs rather than working only with a predefined classroom dataset.

---

## Project Goal

The goal of the project was to use publicly available healthcare data to help Lee Health better understand how its hospital performance compared with other healthcare organizations.

We focused on organizing and analyzing hospital performance data to identify:

* Performance compared with national averages
* Areas where hospitals performed below national benchmarks
* Differences between Lee Health and peer hospitals
* Performance of nationally recognized hospitals
* Hospital deaths and complication measures
* Unplanned hospital visits and readmissions
* Patient experience metrics
* Healthcare-associated infections
* Medical specialty performance
* General facility characteristics and CMS ratings

The overall objective was to transform large public healthcare datasets into structured and useful information that could support **hospital benchmarking and data-driven decision-making**.

---

## Technologies Used

| Technology                        | Purpose                                                       |
| --------------------------------- | ------------------------------------------------------------- |
| **PostgreSQL**                    | Relational database used to structure and store hospital data |
| **Supabase**                      | Cloud-hosted PostgreSQL database                              |
| **SQL**                           | Data querying, filtering, aggregation, and analysis           |
| **Power BI**                      | Interactive reporting and data visualization                  |
| **CMS Provider Data**             | Primary source for public hospital performance data           |
| **U.S. News Best Hospitals Data** | National hospital and specialty benchmarking                  |
| **Git & GitHub**                  | Project organization and version control                      |

---

## Data Engineering Workflow

```text
CMS & Public Healthcare Data
              |
              v
       Data Collection
              |
              v
    Cleaning & Organization
              |
              v
     PostgreSQL / Supabase
              |
              v
         SQL Analysis
              |
              v
          Power BI
              |
              v
 Hospital Performance Benchmarking
```

The project combined multiple public healthcare datasets into a structured relational database. SQL was then used to query and analyze the information before the results were incorporated into Power BI for reporting and visualization.

---

## Data Sources

The project used publicly available healthcare information from the **Centers for Medicare & Medicaid Services (CMS)** along with publicly available hospital ranking information.

### Deaths & Complications

Hospital-level performance measures related to patient mortality and medical complications.

The data allowed us to compare hospital outcomes against national standards and identify areas where performance was better, worse, or similar to national benchmarks.

### Readmissions & Unplanned Visits

Hospital performance data related to patients returning to the hospital following discharge and other unplanned hospital visits.

This information was useful for comparing hospitals and identifying potential differences in follow-up care and outcomes.

### HCAHPS / Patient Experience

Patient experience data based on hospital survey results.

These measures provided information about areas such as patient satisfaction, communication, responsiveness, and overall hospital experience.

### Healthcare-Associated Infections

Hospital safety information related to infections that patients may acquire while receiving medical treatment.

These measures were used to compare hospital infection performance against national benchmarks.

### Hospital General Information

General facility information including:

* Hospital name
* Location
* Hospital type
* Ownership
* Emergency services
* CMS overall hospital rating
* Other facility-level information

### Hospital & Specialty Rankings

Publicly available hospital ranking information was incorporated to provide another benchmark for comparing hospitals.

Specialty-level information allowed performance to be explored across different areas of medicine rather than only looking at overall hospital performance.

### Nationally Recognized Hospitals

Nationally ranked hospitals were included to provide a high-performance benchmark when analyzing hospital metrics.

---

## Database & SQL Analysis

A major part of the project involved taking healthcare information from multiple sources and organizing it into a relational structure that could be queried and analyzed.

**PostgreSQL** was used as the database system, with **Supabase** providing the cloud-hosted PostgreSQL environment.

The database included information covering multiple areas of hospital performance, allowing SQL queries to compare facilities across different metrics.

Our SQL analysis focused on questions such as:

* How does Lee Health compare with other Florida hospitals?
* Which measures perform below the national average?
* Which hospitals perform better across specific outcome measures?
* How do readmission and unplanned visit metrics compare across hospitals?
* How does patient experience compare between facilities?
* Which healthcare-associated infection measures perform above or below national benchmarks?
* How do nationally recognized hospitals compare across major performance categories?
* Which medical specialties show differences in performance?
* What are some of the largest performance gaps between hospitals?

The results of this analysis were then used as the foundation for the Power BI report.

---

# Power BI Report

The final Power BI report was designed as an **interactive hospital benchmarking and performance analysis tool**.

Rather than focusing on a single metric, the report brought together multiple healthcare datasets and allowed hospital performance to be explored from several different perspectives.

The report included pages and analysis covering:

* **Top 20 U.S. Hospitals**
* **Performance Compared to National Average**
* **Below National Average Measures**
* **Deaths & Complications**
* **Unplanned Hospital Visits**
* **Readmissions**
* **Specialty Scores**
* **Facility General Information**
* **Patient Experience**
* **Healthcare-Associated Infections**
* **Hospital Benchmarking**
* **Additional hospital performance metrics**

Users could explore different performance areas and compare hospitals using the information collected and organized during the project.

---

## Top 20 Hospitals in the United States

This report view uses nationally recognized hospitals as a benchmark for exploring hospital performance.

<img width="1582" height="926" alt="Top 20 Hospitals Dashboard" src="https://github.com/user-attachments/assets/0aaba6d5-5f9c-4338-bad5-75bb55ec4d40" />

---

## Performance Compared to National Average

This report view compares hospital performance measures against national benchmarks.

It helps identify whether specific hospital measures are performing **better than, worse than, or similar to the national average**.

<img width="1566" height="922" alt="Hospital Performance Compared to National Average" src="https://github.com/user-attachments/assets/53f0947c-4137-41bc-8526-2c3e230e8861" />

---

## Deaths & Complications

This report view focuses on CMS deaths and complications measures.

The analysis helps compare hospital outcomes and identify measures where performance differs from national benchmarks.

<img width="1672" height="1312" alt="Deaths and Complications Dashboard" src="https://github.com/user-attachments/assets/9152a154-09d9-4ec6-8437-06292bb3f854" />

---

## Additional Power BI Analysis

The full Power BI report contains additional pages beyond the examples shown above.

### Specialty Scores

Analyzes hospital performance across different medical specialties, allowing performance to be evaluated at a more specific level instead of relying only on overall hospital rankings.

### Below National Average

Highlights measures where hospital performance falls below national benchmarks, making potential performance gaps easier to identify.

### Unplanned Hospital Visits

Explores CMS measures related to unplanned hospital visits and return visits.

### Facility General Information

Provides important background information about each hospital, including facility characteristics, CMS ratings, ownership, location, and available services.

### Patient Experience

Examines hospital patient experience information using publicly available survey and performance data.

### Healthcare-Associated Infections

Analyzes hospital infection measures and compares performance against national benchmarks.

Together, these report pages provide a broader view of hospital performance rather than relying on one individual metric.

---

# Service-Learning Partnership

One of the most important parts of this project was that it involved a **real community partner and real organizational needs**.

Instead of completing a predefined classroom analysis, we worked with a contact from **Lee Health's Strategy & Innovation Division** throughout the project.

The service-learning process included:

1. Meeting with the Lee Health contact to understand their needs
2. Identifying useful public healthcare datasets
3. Building and populating the PostgreSQL database
4. Developing SQL queries and analysis
5. Presenting project progress to the Lee Health contact
6. Receiving stakeholder feedback
7. Adjusting the project scope based on that feedback
8. Developing the Power BI report
9. Preparing the final analysis
10. Delivering the completed project to our Lee Health contact

Lee Health's movement toward **Microsoft services and Power BI reporting** also influenced the direction of the final deliverable.

The project therefore provided experience not only with technical data engineering work, but also with **stakeholder communication, changing requirements, project scope, and delivering a solution for a real organization**.

---

## My Contributions

As one of the primary students responsible for completing the project, I contributed approximately **50 hours of service-learning work**.

My contributions included:

* Working with large public CMS healthcare datasets
* Cleaning and organizing hospital performance data
* Structuring data for relational storage
* Working with PostgreSQL and Supabase
* Developing SQL queries for healthcare analysis
* Comparing hospital performance against national benchmarks
* Analyzing hospital quality and outcome metrics
* Building Power BI reports and visualizations
* Participating in meetings with our Lee Health contact
* Discussing requirements and project progress with the stakeholder
* Adjusting the project based on stakeholder feedback
* Helping prepare and deliver the final project to Lee Health

This project gave me experience working through a more complete data workflow, from **raw public data to database storage, SQL analysis, visualization, stakeholder feedback, and final delivery**.

---

## Key Takeaways

This project provided hands-on experience with both the technical and collaborative sides of data engineering.

Some of the main areas of experience included:

* Relational database design
* PostgreSQL
* Cloud database environments
* SQL analysis
* Working with multiple real-world datasets
* Healthcare data analytics
* Data visualization
* Power BI dashboard development
* Data benchmarking
* Stakeholder communication
* Requirements gathering
* Responding to changing project requirements
* Service-learning and team collaboration

---

## Data Privacy

All healthcare information used in this project came from **publicly available hospital-level datasets**.

The project did **not** use patient-level records, private medical information, or Protected Health Information (PHI).

The repository is intended to demonstrate the data engineering and analytics work completed during the project.

---

## Project Context

* **Course:** Introduction to Data Engineering
* **University:** Florida Gulf Coast University (FGCU)
* **Project Type:** Service-Learning / Community Partner Project
* **Community Partner:** Lee Health — Strategy & Innovation Division
* **Primary Team:** 2 students
* **Service-Learning Contribution:** Approximately 50 hours per primary team member
* **Database:** PostgreSQL / Supabase
* **Analysis:** SQL
* **Reporting:** Power BI
* **Data:** Public CMS and hospital benchmarking datasets
* **Final Deliverable:** Database, SQL analysis, Power BI reporting, and project handoff

---

## Disclaimer

This repository represents an academic service-learning project completed in partnership with Lee Health.

All analysis is based on publicly available data and was completed for educational and service-learning purposes. This repository does not contain confidential Lee Health information or patient data.
