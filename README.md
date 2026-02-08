\# Financial Risk Analytics – Investment Risk \& Volatility Monitor



This project focuses on building an end-to-end financial analytics system using:

\- Python (data ingestion \& risk calculations)

\- MySQL (structured storage)

\- Power BI (interactive dashboards)



Current Status: Project initialization





\## Dashboard Summary

\- Executive Overview: Portfolio risk metrics, Monte Carlo distribution, and forecast

\- Asset-Level Analysis: Volatility ranking, sector risk contribution, and risk–return comparison

\- Tools Used: Python, MySQL, Power BI

\- Techniques: Monte Carlo Simulation, Value at Risk (VaR), Volatility Modeling





---



\## Reliability Settings

\- Task runs whether user is logged in or not

\- Runs with highest privileges

\- Restarts automatically on failure

\- Runs immediately if a scheduled execution is missed



---



\## Validation Checks

\- CSV file timestamp updated

\- MySQL table updated with new trade dates

\- Log file records successful execution



---



\## Outcome

The automation demonstrates production readiness and ensures

that dashboards remain up-to-date without manual intervention.



\## Automation \& Refresh Pipeline

\- Weekly automated data refresh using Windows Task Scheduler

\- Python notebooks executed via nbconvert

\- MySQL and CSV datasets updated automatically

\- Power BI dashboards reflect refreshed data without manual steps



