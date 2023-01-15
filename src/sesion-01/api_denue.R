library(httr)
library(jsonlite)
library(rjson)
library(tidyverse)

token_inegi <- '01e6e11f-351f-4b59-b780-70a81825c91d'

## Estructura URL
'https://www.inegi.org.mx/app/api/denue/v1/consulta/buscar/#condicion/#latitud,#longitud/#metros/#token'

condicion <- 'restaurantes/'
latitud <- '21.85717833/' # default inegi
longitud <- '-102.28487238/' # default inegi
metros <- '20/'

url <- paste0('https://www.inegi.org.mx/app/api/denue/v1/consulta/buscar/',condicion,latitud,longitud,metros,token_inegi)

r <- GET(url)
content(r, 'text')
