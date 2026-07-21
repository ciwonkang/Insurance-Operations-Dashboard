----------------------------------------------------------------------
SELECT
    SUBSTR(LOSS_DT, 1, 7) AS Claim_Month,
    COUNT(*) AS Total_Claims,
    SUM(CLAIM_AMOUNT) AS Total_Claim_Amount,
    AVG(CLAIM_AMOUNT) AS Average_Claim_Amount
FROM insurance_dashboard
GROUP BY Claim_Month
ORDER BY Claim_Month;
----------------------------------------------------------------------