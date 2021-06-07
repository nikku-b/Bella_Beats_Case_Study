with hourlycaloriesstepsintensitiesmerged AS 
(SELECT
   c.id,
   c.date,
   c.time,
   c.calories,
   s.step_total,
   i.Total_Intensity
FROM 
  hourlycaloriesmerged c
INNER JOIN 
  hourlystepsmerged s							   
ON 
 c.id=s.id AND c.date=s.date AND c.time=s.time
INNER JOIN 
  hourlyintensitiesmerged i
ON
 c.id=i.id AND c.date=i.date AND c.time=i.time),

timeday as (SELECT
  id,
  date,
  time,
  CASE 
    WHEN time BETWEEN '06:00:00' AND '11:59:00' THEN 'morning'
	WHEN time BETWEEN '12:00:00' AND '17:59:00' THEN 'afternoon'
	WHEN time BETWEEN '18:00:00' AND '20:59:00' THEN 'evening'
	WHEN time BETWEEN '21:00:00' AND '23:59:00' THEN 'night'
	WHEN time BETWEEN '00:00:00' AND '05:59:00' THEN 'night'
	END AS Times_Of_Day,
   calories,
   step_total,
   total_intensity
FROM 
  hourlycaloriesstepsintensitiesmerged)
  
SELECT 
  Times_Of_Day,
  round(AVG(calories), 2) AS Average_Calories_Burned,
  round(AVG(step_total),2) AS Average_Step_Total,
  round(AVG(total_intensity),2) AS Average_Total_Intensity
FROM 
  timeday
GROUP BY 
  Times_Of_Day
ORDER BY 
  Average_Calories_Burned DESC
  
 
  












