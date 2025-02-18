SELECT locationpk.locationname,
COUNT(CASE WHEN cptcode.cptgrouping = 'CPT Cat II Codes' THEN 1 END) AS CPT_Cat_II_Codes,
COUNT(CASE WHEN cptcode.cptgrouping = 'HCPCS Level II Codes' THEN 1 END) AS HCPCS_Level_II_Codes,
COUNT(CASE WHEN cptcode.cptgrouping = 'Office' THEN 1 END) AS Office,
COUNT(CASE WHEN cptcode.cptgrouping = 'Nursing/Rest/Home' THEN 1 END) AS Nursing_Rest_Home,
COUNT(CASE WHEN cptcode.cptgrouping = 'Hospital' THEN 1 END) AS Hospital,
COUNT(CASE WHEN cptcode.cptgrouping = 'PathLab' THEN 1 END) AS PathLab,
COUNT(CASE WHEN cptcode.cptgrouping = 'Misc' THEN 1 END) AS Misc,
COUNT(CASE WHEN cptcode.cptgrouping = 'Medicine' THEN 1 END) AS Medicine,
COUNT(CASE WHEN cptcode.cptgrouping = 'Radiology' THEN 1 END) AS Radiology,
COUNT(CASE WHEN cptcode.cptgrouping = 'Surgery' THEN 1 END) AS Surgery
FROM locationpk
INNER JOIN fact ON locationpk.dimlocationpk = fact.dimlocationpk
INNER JOIN cptcode ON fact.dimcptcodepk = cptcode.dimcptcodepk
GROUP BY locationpk.dimlocationpk

