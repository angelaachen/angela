
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
  
  
  flights = readRDS("data/flights.rds")
  str(flights)
  
  flightsData <- flights$data[[1]]$data_frame
  
  
  flightsData$AirlineID
  
  
  
  
  levels(flightsData$AirlineID) |> length()
  table(flightsData$AirlineID) |> sort(decreasing = TRUE) |> head(10)
  data2 <- list(
    meta = list(
      name="航空公司統一代碼
",
      source_link ="https://data.gov.tw/dataset/8088"
    ),
    file = "data/airlines.json"
  )
  
  flights$data[[2]] <- data2
  
  airlines <-
    jsonlite::fromJSON(
      flights$data[[2]]
      data[[2]]$data_frame <- airlines
      
      saveRDS(flights, file="flights.rds")
      
      
      dplyr::glimpse(airlines)  
      
      dplyr::glimpse(flightsData)
      whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE)
      
      whichNeedPlus1
      flightsDataScheduleStartDate)
  
  
  departureDate <- flightsData$ScheduleStartDate
  departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1)
  
  
  
  departureTimeString <- flightsData$DepartureTime
  
  departureTimeString <- flightsData$DepartureTime
  departureTimeString <- sub("+1", "", departureTimeString, fixed = T)
  
  departureTime <- paste(departureDate, departureTimeString)
  
  head(departureTime)
  

  options(encoding = "UTF-8")
  Sys.setlocale("LC_CTYPE", "zh_TW.UTF-8")
  
  flights <- readRDS("data/flights_week10.rds")
  
  
  flightsData <- flights$data[[1]]$data_frame
  
  
  dplyr::glimpse(flightsData)
  
  library(dplyr)
  library(lubridate)
  
  flightsData <- flightsData %>%
    group_by(DepartureTimeZone) %>%
    mutate(DepartureTime = ymd_hms(DepartureTime, tz = DepartureTimeZone[[1]])) |>
    glimpse()
  
  flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData
  
  
  head(split_flightsData[[1]], 3)
  head(split_flightsData[[2]]$DepartureTimeZone, 3)
  head(split_flightsData[[3]]$DepartureTimeZone, 3)
  
  