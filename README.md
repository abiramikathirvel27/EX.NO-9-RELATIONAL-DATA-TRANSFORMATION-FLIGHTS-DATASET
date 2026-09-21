# EX.NO-9-RELATIONAL-DATA-TRANSFORMATION-FLIGHTS-DATASET
# EX.NO:9 – Relational Data Transformation

## Aim
To add latitude and longitude for origin and destination airports to the flights data.

## Dataset
nycflights13 flights and airports datasets.

## Algorithm
1. Select faa, lat and lon from airports.
2. Join with flights using origin and dest airport codes.
3. Display the resulting data.

## Task
Run the R program and check the output.

## Expected Result
The flights data should contain:
- origin_lat
- origin_lon
- dest_lat
- dest_lon


RELATIONAL DATA TRANSFORMATION FLIGHTS DATASET
al<-airports %>%select(faa, lat, lon)
al
flights%>%select(year:day,hour,origin,dest)%>%left_join(al,by=c("origin"="faa"))
%>%left_join(al,by=c("dest"="faa"))
