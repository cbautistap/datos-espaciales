library(tidyverse)

# Clase 1. Análisis de datos espaciales

# Exploración rápida datos muestra - check-ins
df <- read_csv('data/Sample_data.csv') 
view(df)

head(df)
tail(df)

colnames(df)
summary(df)
str(df)

# Exploración rápida datos aeronáuticos
za <- read_csv('data/acceso_zonas_arqueologicas.csv')
colnames(za)
str(za)
head(za)
tail(za)
unique(za$estado)
summary(za)

# Exploración rápida pasajeros
pas <- read_csv('data/pasajeros.csv')
colnames(pas)
length(colnames(pas))
str(pas)
head(pas)
tail(pas)
unique(pas$tipo)
length(unique(pas$origen))
summary(pas)
