source(here::here("_setup.R"))

start <- "2000-01-01"
end <- "2025-12-01"

message("Download ASML data from Yahoo Finance...")
tryCatch({
    asml_data <- getSymbols("ASML", src="yahoo", from=start, to=end, auto.assign = FALSE)
    asml <- data.frame(Date = index(asml_data), coredata(asml_data))

    data_folder <- here::here("data")
    if (!dir.exists(data_folder)) {
        dir.create(data_folder)
    }
    saveRDS(asml, file = here::here("data", "asml_data.rds"))
    
    message("Data saved successfully in data/asml_data.rds")
}, error = function(e) {
  message("Error downloading data: ", e$message)
})