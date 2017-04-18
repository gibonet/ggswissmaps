
.onLoad <- function(lib, pkg){
  utils::data("shp_df", package = "ggswissmaps", 
              envir = parent.env(environment()))
  maps2 <<- lapply(shp_df, maps2_)
  # rm(shp_df, envir = parent.env(environment()))
  maps2
}