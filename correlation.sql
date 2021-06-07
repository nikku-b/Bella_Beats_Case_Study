/* Looking at the previous insights, I wanted to determine if  there was a relationship between calories burned and steps, and a relationship between calories burned and intensity of activity. I found a strong correlation between calories burned and number of steps, and an even stronger correlation between calories burned and intensity of activity */

with HourlyCaloriesStepsIntensitiesMerged AS 
(SELECT
   c.id,
   c.date,
   c.time,
   c.calories,
   s.step_total,
   i.Total_Intensity
FROM 
  HourlyCaloriesMerged c
INNER JOIN 
  HourlyStepsMerged s							   
ON 
 c.id=s.id AND c.date=s.date AND c.time=s.time
INNER JOIN 
  HourlyIntensitiesMerged i
ON
 c.id=i.id AND c.date=i.date AND c.time=i.time)

SELECT
  ROUND(CAST(CORR(calories, step_total) AS numeric), 3) AS Corr_Calories_StepTotal,
  ROUND(CAST(CORR(calories, Total_Intensity) AS numeric), 3) AS Corr_Calories_Intensity
FROM 
  HourlyCaloriesStepsIntensitiesMerged
 
  












