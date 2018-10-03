#
setwd("H:/SFSD/INFEPI/Projekter/AKTIVE/MOMO/GitHub/EuroMOMOnetwork")

devtools::document("MOMO")
devtools::check("MOMO")

# Creates a source package
file <- devtools::build("MOMO", binary = FALSE)
drat::insertPackage(file, repodir = "drat")

# Creates a Windows binary package
file <- devtools::build("MOMO", binary = TRUE)
drat::insertPackage(file, repodir = "drat")

saveRDS(read.dcf("drat/src/contrib/PACKAGES"), "drat/src/contrib/PACKAGES.rds")
