
setwd("H:/SFSD/INFEPI/Projekter/AKTIVE/MOMO/GitHub/EuroMOMOnetwork")

devtools::document("MOMO")
devtools::check("MOMO")
file <- devtools::build("MOMO")

drat::insertPackage(file, repodir = "drat")

saveRDS(read.dcf("drat/src/contrib/PACKAGES"), "drat/src/contrib/PACKAGES.rds")
