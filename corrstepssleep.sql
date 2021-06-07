/* After finding the relationship between steps and calories burned, I now wanted to look at the relationship between steps and minutes slept.
I surprisingly found a very weak negative correlation between minutes slept and steps. */

with DailyActivitySleepMerged AS (SELECT
  a.id,
  a.activity_date,
  a.total_steps,
  s.total_minutes_asleep
FROM
  DailyActivityMerged a
INNER JOIN
  SleepDayMerged s
ON
  a.id=s.id AND a.activity_date=s.sleep_day)
  
SELECT 
  ROUND(CAST(CORR(total_steps, total_minutes_asleep) AS numeric), 3) AS Corr_Steps_Sleep
FROM
  DailyActivitySleepMerged
  
 