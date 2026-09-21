# EX.NO:9 – RELATIONAL DATA TRANSFORMATION – FLIGHTS DATASET

## AIM

To add latitude and longitude for origin and destination airports to the flights data.

## ALGORITHM

1. Load the required R packages and datasets.
2. Select `faa`, `lat`, and `lon` from the `airports` dataset.
3. Rename the latitude and longitude columns for the origin airport.
4. Join the airport information with the `flights` dataset using `left_join()`.
5. Rename the latitude and longitude columns for the destination airport.
6. Join the airport information again using the destination airport code.
7. Display the transformed flights data.

## DATASET

The program uses the `flights` and `airports` datasets from the `nycflights13` package.

## CODING

### i) Select airport latitude and longitude

```r
al <- airports %>%
  select(faa, lat, lon)

al
