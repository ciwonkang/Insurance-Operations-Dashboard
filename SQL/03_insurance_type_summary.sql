----------------------------------------------------------------------
SELECT
insurance_type,
sum(premium_amount) as total_premium,
sum(claim_amount) as total_claim_amount,
count(*) as total_claims,
avg(claim_amount) as average_claim_amount
from insurance_dashboard
group by INSURANCE_TYPE
order by total_claim_amount desc;
----------------------------------------------------------------------