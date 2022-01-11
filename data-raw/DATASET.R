## code to prepare `DATASET` dataset goes here

library(sf)

library(dplyr)



library(data.table)

path <-"C:/salma_R/salma/mydata/"
meta_f <- list.files(paste0(path,"txt"),
                        pattern = "*.txt",
                        full.names = TRUE)
#observed data
#loading observed data
pr <- fread(meta_f[2], na.strings = '-9999')
tas <- fread(meta_f[3], na.strings = '-9999')

pr = pr[!is.na(RR)]
pr[,pr_o := RR/10]
pr[, DTM := as.Date(as.character(DATE), format = '%Y%m%d')]
pr=pr[,.(DTM,pr_o)]

tas[,tem_o := TG/10]
tas = tas[!is.na(tem_o)]
tas[, DTM := as.Date(as.character(DATE), format = '%Y%m%d')]
tas=tas = tas[,.(DTM,tem_o)]

obs = pr[tas, on = 'DTM', nomatch = NULL]

#~~~~~~~~~~~~~~~~~~~~~~~~
# GCM simulation
library(ncdf4)
library(raster)
library(terra)

nc_r <- list.files(paste0(path,"ncr"),
                       pattern = "*.nc",
                       full.names = TRUE)
pr_gcm = brick(nc_r[1])
tas_gcm = brick(nc_r[2])

pr_sim = readRDS(paste0(path,'pr_sim.rds'))
tas_sim = readRDS(paste0(path,"tas_sim.rds"))

route <- "C:/salma_R/salma/mydata/"
nc_files <- list.files(paste0(route,"ncr"),
                       pattern = "*.nc",
                       full.names = TRUE)
prep_r <- raster::raster(nc_files[1])
tempera_r <- raster::raster(nc_files[2])



usethis::use_data(obs, overwrite = TRUE)
usethis::use_data(pr_gcm, overwrite = TRUE)
usethis::use_data(tas_gcm, overwrite = TRUE)
usethis::use_data(pr_sim, overwrite = TRUE)
usethis::use_data(tas_sim, overwrite = TRUE)
usethis::use_data(prep_r, overwrite = TRUE)
usethis::use_data(tempera_r, overwrite = TRUE)
