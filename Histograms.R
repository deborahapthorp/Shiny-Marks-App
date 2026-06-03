
library(flexplot)
library(dplyr)
library(readr)
library(ggplot2)
library(ggpubr)
library(patchwork)

grades <- read_csv("2026 TRIMESTER 1 PSYC422 Grades.csv")


grades <- grades %>%  # rename columns to be more concise for display 
  rename(
    DB=  `Discussion Board`
    
  )


histogram1 <- flexplot(Assignment ~ 1, grades) +
  scale_x_continuous(breaks = seq(16, 30, by=2)) +
  theme_classic()

histogram2 <- flexplot(Quiz ~ 1, grades) +
  theme_classic()

histogram3 <- flexplot(DB ~ 1, grades) +
  theme_classic()

histogram4 <- flexplot(Exam ~ 1, grades) +
  scale_x_continuous(breaks = seq(20, 50, by=5)) +
  theme_classic()

histogram1+histogram2+histogram3+histogram4
