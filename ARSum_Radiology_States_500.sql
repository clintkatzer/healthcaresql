SELECT "State",
ROUND(SUM(fact.ar))
FROM fact
INNER JOIN patient ON fact.patientnumber=patient.patientnumber
INNER JOIN cptcode ON fact.dimcptcodepk = cptcode.dimcptcodepk
WHERE cptgrouping ='Radiology' AND fact.ar<-500
GROUP BY "State"
ORDER BY "State"