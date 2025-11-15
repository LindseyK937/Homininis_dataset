
# Load necessary packages
library(tidyverse)
library(dplyr)
library(rio)
library(psych)
homininos_data <- read.csv("C:/Users/LINDSEY KHALUMBA/OneDrive/Desktop/homininos_data.csv")
view(homininos_data)

# Check dataset structure
str(homininos_data)
summary(homininos_data)

# Check for missing values
is.na(homininos_data)
# Check all column names
names(homininos_data)

# See what the genus_specie values actually represent
table(homininos_data$genus_specie)

# Check if it's meant to be categorical
unique(homininos_data$genus_specie)
cat("Number of unique species:", length(unique(homininos_data$genus_specie)))

# Performing descriptive stats
desc_by_species <- homininos_data %>%
  mutate(genus_specie = as.factor(genus_specie)) %>%
  group_by(genus_specie) %>%
  summarise(across(c(cranial_capacity, height, time),
                   list(
                     n = ~sum(!is.na(.)),
                     mean = ~mean(., na.rm = TRUE),
                     sd = ~sd(., na.rm = TRUE),
                     median = ~median(., na.rm = TRUE),
                     min = ~min(., na.rm = TRUE),
                     max = ~max(., na.rm = TRUE)
                   )))

desc_by_species

#checking for normality
library(dlookr)
hist_plots <- list()

for(var in c("cranial_capacity", "height", "time")) {
  data <- na.omit(homininos_data[[var]])
  mean_val <- mean(data)
  sd_val <- sd(data)
  
  hist_plots[[var]] <- ggplot(data.frame(x = data), aes(x = x)) +
    geom_histogram(aes(y = after_stat(density)), 
                   bins = 30, 
                   fill = "lightblue", 
                   color = "black",
                   alpha = 0.7) +
    stat_function(fun = dnorm, 
                  args = list(mean = mean_val, sd = sd_val),
                  color = "red", 
                  linewidth = 1) +
    labs(title = paste("Distribution of", var),
         subtitle = paste("Normal curve: mean =", round(mean_val, 1), 
                          "SD =", round(sd_val, 1)),
         x = var, 
         y = "Density") +
    theme_minimal()
}
# Display histograms
hist_plots$cranial_capacity
hist_plots$height
hist_plots$time

#Compare time between two habitat types
# Determining number of habitats
table(homininos_data$habitat)

# Compare time between habitat 0 vs habitat 8
habitat_0 <- homininos_data$time[homininos_data$habitat == 0]
habitat_8 <- homininos_data$time[homininos_data$habitat == 8]

wilcox.test(habitat_0, habitat_8)
# Compare time across multiple locations
kruskal.test(time ~ location, data = df)

# Compare time across different zones
kruskal.test(time ~ zone, data = homininos_data)

# Compare cranial capacity across habitats
kruskal.test(cranial_capacity ~ habitat, data = homininos_data)
# Install and load required package
install.packages("dunn.test")
library(dunn.test)

# Post-hoc test for significant Kruskal-Wallis results
dunn.test(homininos_data$time, homininos_data$location, method = "bonferroni")
dunn.test(homininos_data$cranial_capacity, homininos_data$habitat, method = "bonferroni")

#Spearmanns correlation analysis
cor.test(homininos_data$cranial_capacity, homininos_data$height, method = "spearman")
cor.test(homininos_data$time, homininos_data$height, method = "spearman")
cor.test(homininos_data$cranial_capacity, homininos_data$time, method = "spearman")
