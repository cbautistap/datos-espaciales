library(httr)
library(jsonlite)
library(rjson)
library(tidyverse)

# Ejercicio API Banco de Indicadores

## Obtener datos de la serie histórica del indicador de Población total, 
## en los Estados Unidos Mexicanos, en idioma español, en formato JSON y calcular
## su promedio.

# API DENUE CBP

token_inegi <- '01e6e11f-351f-4b59-b780-70a81825c91d'

#Llamado al API
url <- paste0("https://www.inegi.org.mx/app/api/indicadores/desarrolladores/jsonxml/INDICATOR/1002000001/es/00000/false/BISE/2.0/",token_inegi,"?type=json")
respuesta <- GET(url)
datosGenerales <- content(respuesta,"text")
flujoDatos <- paste(datosGenerales,collapse = " ")

#Obtención de la lista de observaciones 
flujoDatos <- fromJSON(flujoDatos)
flujoDatos <- flujoDatos $Series
flujoDatos <- flujoDatos[[1]] $OBSERVATIONS

#Generación del promedio de la lista de observaciones 
datos <- 0;
for (i in 1:length(flujoDatos)){
  
  datos[i] <- flujoDatos[[i]] $OBS_VALUE
}

datos <- as.numeric(datos)
print(mean(datos))
