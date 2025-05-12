
# git remote add gitlab git@gitlab.com:gibonet/ggswissmaps.git

# Push to github and gitlab -----------
# git push -u gitlab master
# git push -u origin master

# git checkout -b progressbar
# git branch
# git push --set-upstream gitlab progressbar
# git push --set-upstream origin progressbar

# devtools --------
library(devtools)

load_all()

document()

check_man()
check()

build()

install(upgrade = "never")


# usethis ---------
library(usethis)

use_package_doc()

use_testthat()



# covr::package_coverage() ------------
rstudioapi::restartSession()
library(covr)
cov <- package_coverage()
cov
# as.data.frame(cov)
# report()
report(cov, file = "ggswissmaps-report.html")


# pkgdown ---------
library(pkgdown)
pkgdown::build_site()
