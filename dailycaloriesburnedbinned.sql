SELECT 
  CASE 
    WHEN calories BETWEEN 0 AND 1000 THEN '0-1000'
	WHEN calories BETWEEN 1001 AND 2000 THEN '1001-2000'
	WHEN calories BETWEEN 2001 AND 3000 THEN '2001-3000'
	WHEN calories BETWEEN 3001 AND 4000 THEN '3001-4000'
	WHEN calories BETWEEN 4001 AND 5000 THEN '4001-5000'
  END AS Calories_Burned,
  ROUND(CAST(AVG(Total_Steps) AS NUMERIC),2) AS AVG_Total_Steps,
  ROUND(CAST(AVG(Very_Active_Minutes) AS NUMERIC),2) AS AVG_Very_Active_Minutes,
  ROUND(CAST(AVG(Fairly_Active_Minutes) AS NUMERIC), 2) AS AVG_Fairly_Active_Minutes,
  ROUND(CAST(AVG(Lightly_Active_Minutes) AS NUMERIC),2) AS AVG_Lightly_Active_Minutes
FROM 
  DailyActivityMerged
GROUP BY 
  1
ORDER BY
  1;
 
