CREATE DATABASE fifa_db;

USE fifa_db;

CREATE TABLE teams(
	team_id  INT,
    team_name TEXT,
    team_league TEXT,
    rival_team_id INT,
    attack INT,
    midfield INT,
	defence INT,
    transfer_budget TEXT,
    country TEXT    
);

CREATE TABLE players_mv( 
    player_name TEXT,
    player_marketValue TEXT
);

CREATE TABLE players(
	player_id INT,
    player_name TEXT,
    age INT,
    nationality TEXT,
    overall INT,
    potencial INT,
    club TEXT,
    player_value TEXT,
    wage TEXT,
    relase_clause TEXT
);

alter database fifa_db character set utf8mb4 collate utf8mb4_unicode_ci;

alter table fifa_db.teams convert to character set utf8mb4 collate utf8mb4_unicode_ci;

alter table fifa_db.players convert to character set utf8mb4 collate utf8mb4_unicode_ci;