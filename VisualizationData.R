#Reading the csv f8ile to analyse and visualize data
library(tidyverse)
library(ggplot2)
library(tidyverse)
library(dplyr)
library(readr)
f2022 <- readr::read_csv(file = 'C:/Users/ironm/PycharmProjects/AI-Monster/2022.csv')
head(f2022)
tournament <-f2022$Tournament
tournament
##Exploration of Wimbledon
type_tourney <-subset(f2022, Tournament == "Wimbledon")
type_tourney

smaller_one <- f2022[1:200,1:10]
smaller_one
n_col <- ncol(smaller_one)
Djoko_Wins_wimbledon <- subset(smaller_one, Tournament == "Wimbledon" )
Djoko_Wins_wimbledon

ggplot(data = Djoko_Wins_wimbledon,aes(x = Winner, y = Tournament )) + geom_col()


