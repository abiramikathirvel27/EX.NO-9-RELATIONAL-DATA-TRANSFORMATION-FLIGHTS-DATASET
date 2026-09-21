
---

# 2. `exno9_flights.R`

```r
# ============================================================
# EX.NO:9 – RELATIONAL DATA TRANSFORMATION – FLIGHTS DATASET
# ============================================================

# AIM:
# To add latitude and longitude for origin and destination
# airports to the flights data.

# ------------------------------------------------------------
# INSTALL REQUIRED PACKAGE
# ------------------------------------------------------------

if (!requireNamespace("nycflights13", quietly = TRUE)) {
  install.packages("nycflights13",
                   repos = "https://cloud.r-project.org")
}

if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr",
                   repos = "https://cloud.r-project.org")
}

# ------------------------------------------------------------
# LOAD PACKAGES
# ------------------------------------------------------------

library(dplyr)
library(nycflights13)

# ------------------------------------------------------------
# i) SELECT FAA, LATITUDE AND LONGITUDE FROM AIRPORTS
# ------------------------------------------------------------

al <- airports %>%
  select(faa, lat, lon)

print(al)

# ------------------------------------------------------------
# ii) ADD ORIGIN AIRPORT LATITUDE AND LONGITUDE
# ------------------------------------------------------------

origin_airports <- airports %>%
  select(faa, lat, lon) %>%
  rename(
    origin_lat = lat,
    origin_lon = lon
  )

# ------------------------------------------------------------
# ADD DESTINATION AIRPORT LATITUDE AND LONGITUDE
# ------------------------------------------------------------

dest_airports <- airports %>%
  select(faa, lat, lon) %>%
  rename(
    dest_lat = lat,
    dest_lon = lon
  )

# ------------------------------------------------------------
# JOIN FLIGHTS WITH ORIGIN AND DESTINATION AIRPORTS
# ------------------------------------------------------------

result <- flights %>%
  select(year, month, day, hour, origin, dest) %>%
  left_join(
    origin_airports,
    by = c("origin" = "faa")
  ) %>%
  left_join(
    dest_airports,
    by = c("dest" = "faa")
  )

# ------------------------------------------------------------
# DISPLAY RESULT
# ------------------------------------------------------------

print(result)

# Display first 10 rows
print(head(result, 10))
