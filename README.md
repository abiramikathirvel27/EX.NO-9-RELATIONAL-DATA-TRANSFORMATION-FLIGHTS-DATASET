# EX.NO-9-RELATIONAL-DATA-TRANSFORMATION-FLIGHTS-DATASET
RELATIONAL DATA TRANSFORMATION FLIGHTS DATASET
al<-airports %>%select(faa, lat, lon)
al
flights%>%select(year:day,hour,origin,dest)%>%left_join(al,by=c("origin"="faa"))
%>%left_join(al,by=c("dest"="faa"))
