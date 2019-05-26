# ETL Project

## FIFA players

### Data extraction
Data was extracted from the following sources:
* <a href='www.fifaindex.com/es/teams'>FIFAindex</a> web sraping to obtain team name, league, rival team, attack, midfield, defence, transfer budget.
* <a href='https://www.kaggle.com/karangadiya/fifa19'>Kaggle Dataset</a> on information about players
* <a href='https://www.transfermarkt.com/spieler-statistik/wertvollstespieler/marktwertetop'>TransferMarkt</a> web sraping to obtain player value


### Data transformation
CSV document was transformed into Pandas DataFrame and cleaned to keep only player name, nationality, team, value, salary.<br>
Scraped infomration from html documents was also put into dataframes. <br>
Tables were normalized with respect to league, team, country. It was checked for duplicates and inconsistencies, and the format of numbers was corrected.


### Load
Relational database was chosen. It was selected because the later focus of the project will be on the nationality of the players, and the country were they are playing. A relational database allows an easy way to examine such relations.<br>
All tables were loaded into a SQL local database. <br>
Several queries were tried that could be used for further analysis.



#### Prepared by:
* Morado Cuevas
* Sandra Mejia
* Martha Meses
* Carlos Vargas
