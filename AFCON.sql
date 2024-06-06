-- Introducing the Tables
SELECT * FROM AFCON.countries;
SELECT * FROM AFCON.goals;
SELECT * FROM AFCON.match;
SELECT * FROM AFCON.players;

-- Using the WHERE Clause
SELECT player_Name FROM AFCON.players 
WHERE Player_Pos = 'GK';

SELECT First_Team, Second_Team FROM AFCON.match 
WHERE Stage = 'Round of 16';

-- USING the LIKE Clause
SELECT player_Name FROM AFCON.players
WHERE Player_Name LIKE 'A%';

SELECT * FROM AFCON.countries
WHERE Country LIKE '%o%'; 

-- USING the IN Clause
SELECT First_Team, Second_Team FROM AFCON.match
WHERE Stage IN ('Semi Final', 'Third Place', 'Final');

SELECT Player_Scored, No_of_Goal FROM AFCON.goals
WHERE Country_scored IN ('Nigeria', 'Ghana');

-- USING the BETWEEN Clause
SELECT * FROM AFCON.match
WHERE Date BETWEEN '15/01/2024' AND '18/01/2024';

-- INNER JOIN
SELECT AFCON.match.First_Team, AFCON.match.Second_Team, AFCON.goals.Player_Scored,AFCON.goals.No_of_Goal
FROM AFCON.match 
INNER JOIN AFCON.goals ON AFCON.match.Match_id=AFCON.goals.Match_Id;

