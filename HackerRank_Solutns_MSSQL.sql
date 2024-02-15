Create Database DB_HackerRank_Solutns

use DB_HackerRank_Solutns


--Weather Observation Station 8
--SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%[AEIOU]' AND CITY LIKE '[AEIOU]%'


--Q10. WORK Observation station 10
-- SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%[^AEIOU]'
---- SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE '%[AEIOU]'


--Q10. WORK Observation station 11
--select distinct city from station where city not like '[aeiou]%' OR city not like '%[aeiou]'
--SELECT DISTINCT CITY FROM STATION WHERE CITY  LIKE '[^AEIOU]%' OR CITY  LIKE '%[^AEIOU]'

--Q10. WORK Observation station 12
--SELECT DISTINCT CITY FROM STATION WHERE CITY  LIKE '[^AEIOU]%' AND CITY  LIKE '%[^AEIOU]'
--select distinct city from station where city not like '[aeiou]%' AND city not like '%[aeiou]'

--Q- Query the Name of any student in STUDENTS who scored higher than  Marks.
--Order your output by the last three characters of each name. If two or 
--more students both have names ending in the same last three 
--characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

--SELECT NAME FROM STUDENTS WHERE MARKS > 75  
--ORDER BY RIGHT(NAME,3) , ID ASC


--Slaary EMployee
--SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID ASC


--select continent, Floor(avg(CITY.Population)) from country
--join city on CITY.CountryCode = COUNTRY.Code 
--group by continent
