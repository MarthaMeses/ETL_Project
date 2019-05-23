CREATE DATABASE fifa_db;

USE fifa_db;

CREATE TABLE teams(
	team_id  INT PRIMARY KEY,
    team_name TEXT,
    league_id INT,
    transfer_budget TEXT,
    country_id INT
);

CREATE TABLE player_MV( 
    player_name TEXT,
    player_marketValue TEXT
);

