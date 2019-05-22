CREATE DATABASE fifa_db;

#ALTER DATABASE fifa_db DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE fifa_db;

CREATE TABLE teams(
	team_id  INT PRIMARY KEY,
    team_name TEXT,
    league_id INT,
    transfer_budget INT,
    country_id INT
);

CREATE TABLE leagues(
	league_id INT AUTO_INCREMENT PRIMARY KEY,
    league_name TEXT,
    country_id INT
);

CREATE TABLE player_MV(
	player_id INT PRIMARY KEY, 
    player_name TEXT,
    player_marketValue INT
);

CREATE TABLE countries(
	country_id INT PRIMARY KEY,
    country_name TEXT
);

