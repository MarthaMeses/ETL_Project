Insert Into

select *, row_number() Over(Order by Country) as ID
From(
SELECT distinct country FROM fifa_db.teams

UNION

SELECT distinct nationality FROM fifa_db.players) as B
Where country is not null;

-- -------------------------------------------------------
Insert Into 

select replace(team_name, "1. ", "") as Team_Name, row_number() Over(Order by replace(team_name, "1. ", "")) as ID
From(
SELECT distinct team_name FROM fifa_db.teams

UNION

SELECT distinct club FROM fifa_db.players) as B
Where team_name is not null;

-- ------------------------------------------------------

SELECT Case 
		When replace(player_Value, "€", "") like '%M%' Then replace(player_Value, "€", "") * 1000000
        When replace(player_Value, "K", "") like '%M%' Then replace(player_Value, "€", "") * 1000
        End as Player_Marketvalue 
FROM fifa_db.players;

-- -------------------------------------------------------

SELECT player_name, 
replace(replace(replace(player_marketValue, "€", ""), " Mill.", "000000"), ",", "") as Player_Marketvalue 
FROM fifa_db.players_mv;