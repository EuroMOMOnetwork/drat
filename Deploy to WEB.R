devtools::document()
devtools::check()
devtools::build()

drat::insertPackage("C:/Users/nls/Documents/GitHub/MOMO_0.2.0.tar.gz",
                    repodir = "C:/Users/nls/Documents/GitHub/drat")

saveRDS(read.dcf("C:/Users/nls/Documents/GitHub/drat/src/contrib/PACKAGES"),
        "C:/Users/nls/Documents/GitHub/drat/src/contrib/PACKAGES.rds")
