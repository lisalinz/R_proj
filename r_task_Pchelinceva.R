library('ggsci')
library(readr)
library(tidyverse)
library(scales)
library(tidyr)

musicals <- read_csv("https://raw.githubusercontent.com/lisalinz/proj_python/main/musicals_base_final.csv",
                     na = "NA")
musicals[musicals==0] <- NA
musicals

musicals %>% 
  drop_na('Rating') %>% 
  ggplot(aes(x=Title, y=Rating)) +
  geom_segment(aes(x=Title, xend=Title, y=0, yend=Rating)) +
  geom_point(size=5, color='#EBEDEF', fill=alpha('#6C3483', 0.3), alpha=0.7, shape=21, stroke=2)
