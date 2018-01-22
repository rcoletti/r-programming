## filenames <- list.files("specdata", pattern="*.csv", full.names=TRUE)
## nrows <- sapply( filenames , function(f) nrow(read.csv(f)) )
## sum(nrows)

pollutantmean <- function (directory, pollutant, id = 1:332) {
  filenames <- list.files("specdata", pattern="*.csv", full.names=TRUE)
  
  nrows <- sapply( filenames , function(f) mean(read.csv(f) delete) )
}


create_big_data_from_csv_dir <- function(directory, ids) {
  # locate the files
  files <- list.files(directory, full.names=T)[ids]
  
  # read the files into a list of data.frames
  data.list <- lapply(files, read.csv)
  
  # concatenate into one big data.frame
  data.cat <- do.call(rbind, data.list)
  
  # aggregate
  # data.agg <- aggregate(value ~ index, data.cat, mean)
}