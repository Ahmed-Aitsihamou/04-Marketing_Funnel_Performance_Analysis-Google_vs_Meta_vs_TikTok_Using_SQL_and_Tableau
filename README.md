# 📊 Marketing Funnel Performance Analysis – Google vs Meta vs TikTok

## 🔍 Overview

This project analyzes the marketing performance of paid ad campaigns across **Google Ads**, **Meta (Facebook/Instagram)**, and **TikTok Ads**. The objective is to evaluate each platform's efficiency in driving customer acquisition and revenue, using key performance indicators such as CTR, CPC, CPA, and ROAS.

---

## 🧠 Business Problem

An e-commerce company has been running campaigns across multiple ad platforms but lacks clarity on which channel delivers the best return on investment. The goal is to identify:
- Which platform converts traffic into sales most efficiently?
- How to reallocate marketing budgets for maximum profitability?
- Where the company is overspending with poor return?

---

## 🎯 Project Objectives

- Calculate funnel metrics from **Impressions → Clicks → Conversions → Revenue**
- Compare platform performance across:
  - Click-Through Rate (CTR)
  - Conversion Rate
  - Cost Per Click (CPC)
  - Cost Per Acquisition (CPA)
  - Return on Ad Spend (ROAS)
- Deliver clear, actionable insights and strategic recommendations
- Build an interactive Tableau dashboard for data exploration
- Present findings through a professional slide deck

---

## 📁 Dataset

Two mock datasets were used to simulate real-world ad campaign tracking:

### 1. `Campaigns_Dataset.csv`
| Column         | Description                      |
|----------------|----------------------------------|
| campaign_id    | Unique identifier for campaign   |
| platform       | Ad platform (Google, Meta, TikTok) |
| start_date     | Campaign start date              |
| end_date       | Campaign end date                |
| budget_usd     | Total campaign budget (USD)      |

### 2. `Ad_Performance_Dataset.csv`
| Column         | Description                           |
|----------------|---------------------------------------|
| campaign_id    | Foreign key to Campaigns table        |
| date           | Daily performance record              |
| impressions    | Number of ad impressions              |
| clicks         | Number of ad clicks                   |
| conversions    | Number of successful purchases/actions|
| revenue_usd    | Revenue generated (USD)               |

---

## 🛠️ Tools Used

- **SQL:** Data transformation and funnel KPI calculations  
- **Excel:** Initial data inspection and validation  
- **Tableau:** Dashboard for visual analysis  
- **PowerPoint:** Presentation of strategic insights  

---

## 🧾 SQL Code Summary

The SQL script aggregates and analyzes performance data per platform. It calculates CTR, Conversion Rate, CPC, CPA, and ROAS. The main steps include:

- Joining campaign metadata with aggregated ad performance
- Grouping by platform
- Computing funnel metrics

📄 [View SQL Script → `marketing_funnel_analysis.sql`](https://github.com/Ahmed-Aitsihamou/04-Marketing_Funnel_Performance_Analysis-Google_vs_Meta_vs_TikTok_Using_SQL_and_Tableau/blob/main/03%20-%20marketing_funnel_analysis.sql)

---

## 📈 Tableau Dashboard

An interactive dashboard was developed to explore:
- Funnel stage drop-off rates
- Metric comparisons across platforms
- Budget efficiency and ROAS trends

🔗 [View Tableau Dashboard](#) *(Insert Tableau Public link when published)*

---

## 📄 Presentation Slides

The executive summary slide deck includes:
- Project objectives and context
- Key findings per platform
- Strategic recommendations for budget reallocation

📥 [Download Slide Deck → `Marketing_Funnel_Insights.pdf`](https://docs.google.com/presentation/d/1ron5ir6cfgsTQ0Yy5OpX5FDdnFmmE4ly/edit?usp=sharing&ouid=109021823672467213520&rtpof=true&sd=true)

---

## 💡 Key Insights

- **TikTok outperformed all platforms**, achieving:
  - Highest CTR (10%) and Conversion Rate (20%)
  - Lowest CPA ($0.25) and Highest ROAS (365.13)
- **Meta underperformed** on every metric with low efficiency and high cost
- **Google held middle ground** with stable, moderate performance

---

## ✅ Recommendations

1. Reallocate budget aggressively to TikTok for max ROI  
2. Pause or reassess Meta campaigns due to low return  
3. Retain Google for high-intent retargeting  
4. Implement cross-platform attribution to validate LTV impact  

---

## 🙋 About Me

**Ahmed Ait Si Hamou**  
Data Analyst | Excel • SQL • Tableau • Power BI  
[LinkedIn](https://www.linkedin.com/in/ahmedaitsihamou/) • [Portfolio](#) • [Tableau](https://public.tableau.com/app/profile/ahmed.aitsihamou/vizzes) • [GitHub](https://github.com/Ahmed-Aitsihamou)
