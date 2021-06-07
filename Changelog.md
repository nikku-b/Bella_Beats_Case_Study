Changelog
This file contains the notable changes to the project
 
Version 1.0.0 (06-01-2021)
 
## New
- Added Column “Total_Time_in_Bed_Not_Asleep” to track total time in bed not asleep

# # Changes
*Changed date format to YYYY-MM-DD to make date format standardized
*Changed Data type to Datetime for fields that had date and time values, to be used in calculations
*Split Datetime values into date and time values to be used in calculations

# # Removed
* Removed 3 duplicate rows in SleepDayMerged dataset to ensure correct calculated amounts
*Removed 543 duplicate rows in MinuteSleepMerged dataset to ensure correct calculated amounts
