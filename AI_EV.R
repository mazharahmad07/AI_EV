install.packages("tidyverse") 
library(readr) 
library(dplyr) 
library(tidyr) 
library(stringr)
library(ggplot2)

library(readr)
AI_EV <- read_csv("https://raw.githubusercontent.com/mazharahmad07/AI_EV/main/AI_EV.csv")

AI_EV

View(AI_EV)

summary(AI_EV)

class(AI_EV)

str(AI_EV, max.level = 1)

library(dplyr)
AI_EV <- mutate(AI_EV, record_count = sum(publication_number = 1))

library(dplyr)
AI_EV <- rename(AI_EV,  pubyear = publication_year)
head(AI_EV)

library(dplyr)
p1 <- AI_EV %>% select(pubyear, record_count)
head(p1)

pt <- count(p1, pubyear, wt = record_count)
head(pt)

library(ggplot2)
qplot(x = pubyear, y = n, data = pt, geom = "line")
