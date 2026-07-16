-- ============================================================
-- Project 6: Subscription Cohort Analysis
-- Dataset: Streaming Video Subscriptions (3,069 rows)
-- ============================================================

-- Table schema
CREATE TABLE subscriptions (
    subscription_id SERIAL PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    created_date DATE NOT NULL,
    canceled_date DATE,
    subscription_cost NUMERIC(10,2) NOT NULL,
    subscription_interval TEXT NOT NULL,
    was_subscription_paid TEXT NOT NULL
);

-- ============================================================
-- Q1: Assign each customer a cohort month (based on created_date)
-- ============================================================
SELECT
    customer_id,
    created_date,
    DATE_TRUNC('month', created_date)::DATE AS cohort_month
FROM subscriptions
ORDER BY created_date;

-- ============================================================
-- Q2 & Q3: Cohort size + churn rate %
-- ============================================================
SELECT
    DATE_TRUNC('month', created_date)::DATE AS cohort_month,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (WHERE canceled_date IS NOT NULL) AS canceled,
    COUNT(*) FILTER (WHERE canceled_date IS NULL) AS still_active,
    ROUND(
        COUNT(*) FILTER (WHERE canceled_date IS NOT NULL) * 100.0 / COUNT(*),
    2) AS churn_rate_pct
FROM subscriptions
GROUP BY cohort_month
ORDER BY cohort_month;

-- ============================================================
-- Q4: Payment failure rate % per cohort
-- ============================================================
SELECT
    DATE_TRUNC('month', created_date)::DATE AS cohort_month,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (WHERE was_subscription_paid = 'No') AS failed_payments,
    ROUND(
        COUNT(*) FILTER (WHERE was_subscription_paid = 'No') * 100.0 / COUNT(*),
    2) AS failed_payment_pct
FROM subscriptions
GROUP BY cohort_month
ORDER BY cohort_month;

-- ============================================================
-- Q5: Repeat / resubscribing customers
-- ============================================================
SELECT
    customer_id,
    COUNT(*) AS subs_count
FROM subscriptions
GROUP BY customer_id
HAVING COUNT(*) > 1
ORDER BY subs_count DESC;

-- ============================================================
-- Q6: Avg subscription lifespan — Sep 2022 cohort vs Mar 2023 cohort
-- ============================================================
SELECT
    DATE_TRUNC('month', created_date)::DATE AS cohort_month,
    ROUND(AVG(canceled_date - created_date), 1) AS avg_lifespan_days
FROM subscriptions
WHERE DATE_TRUNC('month', created_date)::DATE IN ('2022-09-01', '2023-03-01')
  AND canceled_date IS NOT NULL
GROUP BY cohort_month
ORDER BY cohort_month;

-- ============================================================
-- Q7: Monthly new vs canceled subscriptions (net growth)
-- ============================================================
WITH new_subs AS (
    SELECT DATE_TRUNC('month', created_date)::DATE AS month,
           COUNT(*) AS new_count
    FROM subscriptions
    GROUP BY month
),
canceled_subs AS (
    SELECT DATE_TRUNC('month', canceled_date)::DATE AS month,
           COUNT(*) AS canceled_count
    FROM subscriptions
    WHERE canceled_date IS NOT NULL
    GROUP BY month
)
SELECT
    COALESCE(new_subs.month, canceled_subs.month) AS month,
    COALESCE(new_count, 0) AS new_subs,
    COALESCE(canceled_count, 0) AS canceled_subs,
    COALESCE(new_count, 0) - COALESCE(canceled_count, 0) AS net_growth
FROM new_subs
FULL OUTER JOIN canceled_subs ON new_subs.month = canceled_subs.month
ORDER BY month;

-- ============================================================
-- Q8: Running total of active subscribers over time
-- ============================================================
WITH new_subs AS (
    SELECT DATE_TRUNC('month', created_date)::DATE AS month,
           COUNT(*) AS new_count
    FROM subscriptions
    GROUP BY month
),
canceled_subs AS (
    SELECT DATE_TRUNC('month', canceled_date)::DATE AS month,
           COUNT(*) AS canceled_count
    FROM subscriptions
    WHERE canceled_date IS NOT NULL
    GROUP BY month
),
monthly_net AS (
    SELECT
        COALESCE(new_subs.month, canceled_subs.month) AS month,
        COALESCE(new_count, 0) - COALESCE(canceled_count, 0) AS net_growth
    FROM new_subs
    FULL OUTER JOIN canceled_subs ON new_subs.month = canceled_subs.month
)
SELECT
    month,
    net_growth,
    SUM(net_growth) OVER (ORDER BY month) AS running_active_subscribers
FROM monthly_net
ORDER BY month;
