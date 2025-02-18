SELECT locationpk.locationname, 
COUNT(CASE WHEN payer.dimpayerpk='765829' THEN 1 END) AS medicaid, 
COUNT(CASE WHEN payer.dimpayerpk='98735' THEN 1 END) AS medicare, 
COUNT(CASE WHEN payer.dimpayerpk='58987' THEN 1 END) AS commercial, 
COUNT(CASE WHEN payer.dimpayerpk='92873' THEN 1 END) AS other
FROM locationpk
INNER JOIN fact ON fact.dimlocationpk = locationpk.dimlocationpk
INNER JOIN payer ON payer.dimpayerpk =fact.dimpayerpk
GROUP BY locationpk.locationname