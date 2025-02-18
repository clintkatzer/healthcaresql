SELECT providerspecialty, ROUND(AVG(providerhours),2) AS avgspecialtyhrs, 
ROUND(CAST (AVG(providerfte2) AS NUMERIC),2) AS providerhourpercent FROM provider
GROUP BY providerspecialty

