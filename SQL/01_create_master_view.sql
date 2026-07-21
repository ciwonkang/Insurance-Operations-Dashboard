----------------------------------------------------------------------
CREATE VIEW insurance_dashboard AS

SELECT
    i.TXN_DATE_TIME,
    i.TRANSACTION_ID,
    i.CUSTOMER_ID,
    i.POLICY_NUMBER,
    i.POLICY_EFF_DT,
    i.LOSS_DT,
    i.REPORT_DT,
    i.INSURANCE_TYPE,
    i.PREMIUM_AMOUNT,
    i.CLAIM_AMOUNT,
    i.CLAIM_STATUS,
    i.INCIDENT_SEVERITY,
    i.RISK_SEGMENTATION,
    i.STATE AS CUSTOMER_STATE,
    i.INCIDENT_STATE,
    i.INCIDENT_CITY,
    i.AGE,
    i.EMPLOYMENT_STATUS,
    i.AGENT_ID,
    e.AGENT_NAME,
    e.CITY AS AGENT_CITY,
    e.STATE AS AGENT_STATE,
    i.VENDOR_ID,
    v.VENDOR_NAME,
    v.CITY AS VENDOR_CITY,
    v.STATE AS VENDOR_STATE
FROM insurance_data AS i
LEFT JOIN employee_data AS e
    ON i.AGENT_ID = e.AGENT_ID
LEFT JOIN vendor_data AS v
    ON i.VENDOR_ID = v.VENDOR_ID;
----------------------------------------------------------------------

