SELECT providerspecialty, ROUND(SUM(ar)) AS specialtyar FROM fact
INNER JOIN provider ON provider.dimphysicianpk = fact.dimphysicianpk
WHERE dimdatepostpk>='2019-12-16' AND dimdatepostpk<'2020-01-01'
GROUP BY providerspecialty
ORDER BY SUM(ar) DESC