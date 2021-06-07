/*I looked at more sleep trends. I looked at the daily average hours slept, daily average time in bed, and daily average hours in bed not asleep. 
I found that active users slept on average 7 hours a day and  users spent on average 39 minutes a day in bed not sleeping. */

with DailyAverageSleep as (SELECT 
  round(AVG(total_minutes_asleep)/60, 2) AS Daily_Average_Total_Hours_Asleep,
  round(AVG(total_time_in_bed)/60, 2) AS Daily_Average_Total_Hours_In_Bed
FROM 
  SleepDayMerged)
  
SELECT
  Daily_Average_Total_Hours_Asleep,
  Daily_Average_Total_Hours_In_Bed,
  (Daily_Average_Total_Hours_In_Bed-Daily_Average_Total_Hours_Asleep) AS Daily_Average_Total_Hours_In_Bed_Not_Asleep
FROM DailyAverageSleep