
jsonlite::fromJSON("dats/international_flights.json")

-



data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)
                                                                                      


flights <- list(
  data = list(data1)
)

saveRDS(flights, "data/flights.rds")

filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)

flights$data[[1]]$data_frame <- flightsData

saveRDS(flights, "data/flights.rds")

typeof(flightsData)
class(flightsData)
















