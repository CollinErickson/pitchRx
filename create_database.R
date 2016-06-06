library(dplyr)
library("RSQLite", lib.loc="~/R/win-library/3.3")
library(pitchRx)

#my_db <- src_sqlite("Gameday.sqlite3")
#my_db <- src_sqlite("Gameday.sqlite3",create = T)

#scrape(start = "2013-08-01", end = "2013-08-01", connect = my_db$con)

files <- c("inning/inning_hit.xml", "miniscoreboard.xml", "players.xml")
scrape(start = "2015-08-01", end = "2015-08-01", connect=my_db$con, suffix = files)

my_db$info

tbl(my_db,'hip')
tbl(my_db,'player')
# game, media, coach, player, umpire, hip