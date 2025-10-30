```{r loading data}

# load data

life_expectancy <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2023/2023-12-05/life_expectancy.csv')

```
```{r regression}

# Linear regression years before 1883 (Koch's germ theory)

lm_b1883 <- lm(LifeExpectancy ~ Year, data = life_expectancy[life_expectancy$Year < 1883,])

summary(lm_b1883)




# Linear regression years after 1883 (Koch's germ theory)

lm_a1883 <- lm(LifeExpectancy ~ Year, data = life_expectancy[life_expectancy$Year > 1883,])

summary(lm_a1883)

```