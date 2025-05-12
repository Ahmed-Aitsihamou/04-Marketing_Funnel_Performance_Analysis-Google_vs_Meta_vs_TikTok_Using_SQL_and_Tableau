-- Select Database

USE Marketing_Campaign;

-- Discover Campaign  Dataset Table

SELECT *
FROM Campaigns_Dataset;

-- Discover AD Performance Dataset Table

SELECT *
FROM Ad_Performance_Dataset;



-- Step 1: Create a CTE (Common Table Expression) to summarize campaign-level data
WITH Summary AS (
    SELECT
        C.campaign_id,
        C.platform,
        C.start_date,
        C.end_date,
        ROUND(C.budget_usd, 2) AS budget_usd,  -- Round budget to 2 decimals
        A.total_impressions,
        A.total_clicks,
        A.total_conversions,
        ROUND(A.total_revenue_usd, 2) AS total_revenue_usd -- Round revenue to 2 decimals
    FROM Campaigns_Dataset AS C
    LEFT JOIN (
        -- Aggregate performance data per campaign
        SELECT 
            campaign_id,
            SUM(impressions) AS total_impressions,
            SUM(clicks) AS total_clicks,
            SUM(conversions) AS total_conversions,
            SUM(revenue_usd) AS total_revenue_usd
        FROM Ad_Performance_Dataset
        GROUP BY campaign_id
    ) AS A
    ON C.campaign_id = A.campaign_id -- JOIN two tables by campaign_id column
)

-- Step 2: Aggregate data by platform and calculate funnel KPIs
SELECT
    platform,
    SUM(budget_usd) AS total_ad_spend_usd,
    SUM(total_impressions) AS total_impressions,
    SUM(total_clicks) AS total_clicks,
    SUM(total_conversions) AS total_conversions,
    SUM(total_revenue_usd) AS total_revenue_usd,

    -- Funnel KPIs
    ROUND(CAST(SUM(total_clicks) AS FLOAT) / SUM(total_impressions), 2) AS CTR,				--  CTR = Total Clicks / Total Impressions
    ROUND(CAST(SUM(total_conversions) AS FLOAT) / SUM(total_clicks), 2) AS Conversion_Rate, --  Conversion Rate = total_conversions / total_clicks
    ROUND(CAST(SUM(budget_usd) AS FLOAT) / SUM(total_clicks), 2) AS CPC,					--  CPC = Total AD Spend / Total Clicks
    ROUND(CAST(SUM(budget_usd) AS FLOAT) / SUM(total_conversions), 2) AS CPA,				--  CPA = Total AD Spend / Total Conversions
    ROUND(SUM(total_revenue_usd) / SUM(budget_usd), 2) AS ROAS								--  ROAS = Total Revenue / Total AD Spend

FROM Summary
GROUP BY platform
ORDER BY ROAS DESC;


