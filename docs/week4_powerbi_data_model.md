\# Week-4: Power BI Data Model \& Dashboard Design



\## Objective

The objective of this step is to design a clean, scalable, and

business-ready Power BI data model that supports:

\- Asset-level market analysis

\- Portfolio risk visualization

\- Monte Carlo–based risk forecasting

\- Executive-level decision making



---



\## Data Sources Used



\### 1. Assets (MySQL)

\- Source: financial\_analytics.assets

\- Type: Dimension table

\- Purpose:

&nbsp; - Provides asset metadata (name, sector, ticker)

&nbsp; - Enables filtering and slicing across visuals



\### 2. Market Prices (CSV)

\- Source: clean\_market\_prices\_week1.csv

\- Type: Fact table

\- Grain: One row per asset per trading day

\- Purpose:

&nbsp; - Time-series price analysis

&nbsp; - Return and volatility calculations in Power BI



\### 3. Monte Carlo Outcomes (CSV)

\- Source: mc\_final\_outcomes.csv

\- Type: Analytical fact table (disconnected)

\- Purpose:

&nbsp; - Distribution of simulated portfolio returns

&nbsp; - VaR and loss probability visualization



\### 4. Portfolio Forecast Paths (CSV)

\- Source: portfolio\_forecast\_paths.csv

\- Type: Forecast table (disconnected)

\- Purpose:

&nbsp; - Best, median, and worst-case portfolio projections

&nbsp; - Fan chart and risk band visuals



\### 5. Executive Risk Summary (CSV)

\- Source: executive\_risk\_summary.csv

\- Type: KPI summary table (disconnected)

\- Purpose:

&nbsp; - Display key risk metrics (VaR, worst-case, probability of loss)

&nbsp; - Executive dashboard KPIs



---



\## Data Model Design



\### Star Schema Overview

\- Assets table serves as the central dimension

\- Market Prices table serves as the primary fact table

\- Relationship:

&nbsp; - Assets (1) → Market Prices (\*)

&nbsp; - Single-direction filtering (dimension → fact)



This design ensures:

\- Clean filtering behavior

\- Avoidance of ambiguous joins

\- Scalable and maintainable BI model



---



\## Disconnected Tables – Design Rationale



The following tables are intentionally disconnected from the core model:

\- Monte Carlo Outcomes

\- Portfolio Forecast Paths

\- Executive Risk Summary



\### Reasoning:

\- These datasets are portfolio-level simulations

\- They do not belong to asset-level granularity

\- Connecting them would introduce incorrect filter propagation



Disconnected modeling ensures:

\- Analytical correctness

\- Simpler DAX measures

\- Clear separation between historical data and simulated forecasts



---



\## Dashboard Design Principles



\- Executive-first layout (high-level KPIs at top)

\- Drill-down capability for analysts

\- Minimal clutter with clear visual hierarchy

\- Risk metrics prioritized over raw price data



---



\## Status

✅ Power BI data model validated and approved for dashboard development



