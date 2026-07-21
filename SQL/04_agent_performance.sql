----------------------------------------------------------------------
SELECT
    AGENT_ID,
    AGENT_NAME,
    COUNT(*) AS Total_Claims,
    SUM(PREMIUM_AMOUNT) AS Total_Premium,
    SUM(CLAIM_AMOUNT) AS Total_Claim_Amount,
    AVG(CLAIM_AMOUNT) AS Average_Claim_Amount
FROM insurance_dashboard
GROUP BY
    AGENT_ID,
    AGENT_NAME
ORDER BY Total_Claim_Amount DESC;
----------------------------------------------------------------------