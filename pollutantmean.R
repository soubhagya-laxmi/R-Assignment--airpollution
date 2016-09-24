
pollutantmean <- function(directory, pollutant, id = 1:332)
 {
  files <- list.files(directory, full.names = TRUE) 
  
  dat <- data.frame()
  
  for (i in id) 
    {
    df <- read.csv(files[i])
    
    dat <- rbind(dat, df)
   }
  dat <- na.omit(dat)
  mean(dat[,pollutant])
 }