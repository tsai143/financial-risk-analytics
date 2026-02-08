\# Week-4: Windows Task Scheduler Automation



\## Objective

To automate weekly market data refresh using Python notebooks

and integrate updated data into Power BI dashboards.



---



\## Automation Overview

The automation pipeline is designed to simulate a production-grade

data refresh process using Windows Task Scheduler.



\### Tools Used

\- Python (Jupyter Notebook)

\- Windows Task Scheduler

\- MySQL

\- CSV-based data storage

\- Power BI



---



\## Automation Workflow

1\. Windows Task Scheduler triggers a scheduled task weekly

2\. Task executes a Jupyter Notebook using nbconvert

3\. Notebook performs:

&nbsp;  - Market data refresh (simulated / API-based)

&nbsp;  - Data validation and cleaning

&nbsp;  - MySQL table updates

&nbsp;  - CSV updates for Power BI consumption

4\. Power BI refresh reflects updated datasets



---



\## Scheduled Task Configuration



\### Task Name

Financial Analytics – Weekly Data Refresh



\### Trigger

\- Frequency: Weekly

\- Day: Sunday

\- Time: 10:00 PM



\### Action

\- Program:



