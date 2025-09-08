### Reestructurar dataset

## Librerías y leer datos
library(dplyr)
library(tidyr)
library(readr)

datos = read.csv("C:/Users/Bea/Documents/ICM/MedDigital/Shiny App/MedRecDigital/data_for_analysis.csv")
datos <- datos %>%
  mutate(gsv_results = as.numeric(gsv_results))

## Modificar los datos y reordenarlos
# 1. Agrupar por país, id del país, año y especie, y sumar los resultados
resumen <- datos %>%
  group_by(species, country, country_code, year) %>%
  summarise(gsv_results = sum(gsv_results, na.rm = TRUE), .groups = "drop")

## Guardar el resultado como archivo .rds
saveRDS(resumen, "GSV_data_sa.rds")