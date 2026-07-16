# Project 6: Subscription Cohort Analysis (SQL)

Cohort analysis on a streaming video service's subscription data — tracking customer acquisition, churn, payment failures, and net growth over a 13-month period (Sep 2022–Sep 2023) using PostgreSQL.

## Dataset
- **Source:** Streaming Video Subscriptions dataset
- **Rows:** 3,069 subscription records
- **Columns:** `customer_id`, `created_date`, `canceled_date`, `subscription_cost`, `subscription_interval`, `was_subscription_paid`
- All subscriptions are monthly, $39/month. 377 customers resubscribed at least once (up to 3 times).

## Skills Used
- `DATE_TRUNC()` for monthly cohort bucketing
- Type casting (`::DATE`)
- `GROUP BY` / `HAVING`
- `FILTER (WHERE ...)` for conditional aggregation
- CTEs (`WITH`)
- `FULL OUTER JOIN` + `COALESCE`
- Window functions (`SUM() OVER (ORDER BY ...)`) for running totals

## Questions Answered
1. Assign each customer a cohort month based on `created_date`
2. Cohort size — new customers per month
3. Churn rate % per cohort
4. Payment failure rate % per cohort
5. Identify repeat/resubscribing customers
6. Compare average subscription lifespan: Sep 2022 cohort vs. Mar 2023 cohort
7. Monthly new vs. canceled subscriptions (net growth)
8. Running total of active subscribers over time

## Key Findings
- Churn rate dropped sharply from **90.8%** (Sep 2022 cohort) to **19.4%** (Aug 2023 cohort) — note: newer cohorts had less time to churn, so this isn't a true apples-to-apples comparison (right-censoring).
- Payment failure rate stayed steady at **~3–6%** across all cohorts — a more reliable signal than churn.
- 377 customers (12%) resubscribed at least once after canceling.
- Net subscriber growth was positive every month; active subscriber base grew from 0 to **1,065** by Sep 2023.

## Files
- `subscription_cohort_analysis.sql` — full query set

## Tools
PostgreSQL, pgAdmin
