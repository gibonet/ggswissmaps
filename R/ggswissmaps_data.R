


#' A list with 8 data frames of swiss territory boundaries, at various levels.
#'
#' Every element of the list is a data frame, which can be used with 'ggplot2'.
#'
#' Columns are not all the same across data frames, but usually they have the
#' following in common:
#' \itemize{
#'   \item long. Longitude coordinate (x)
#'   \item lat. Latitude coordinate (y)
#'   \item group. A factor to be used to plot the polygons correctly (with ggplot2)
#' }
#'
#' @format A list with 8 data frames with swiss territory boundaries (at various levels).
#' @source \url{https://data.geo.admin.ch/browser/index.html#/collections/ch.bfs.historisierte-administrative_grenzen_g1?.language=en}. Download date: 2015-08-18
#' @examples
#' data(shp_df)
#' class(shp_df)
#' length(shp_df)
#' names(shp_df)
#' str(shp_df[["g1k15"]])
#' @name shp_df
NULL


#' A list with 8 'ggplot2' objects of swiss territory boundaries, at various
#' levels.
#'
#' Every element of the list is a 'ggplot2' graphic, corresponding to an
#' element of \code{shp_df}.
#'
#' Columns are not all the same across data frames, but usually they have the following in common:
#' \itemize{
#'   \item long. Longitude coordinate (x)
#'   \item lat. Latitude coordinate (y)
#'   \item group. A factor to be used to plot the polygons correctly (with ggplot2)
#' }
#'
#' @format A list with 8 data frames with swiss territory boundaries (at various levels).
#' @source \url{https://data.geo.admin.ch/browser/index.html#/collections/ch.bfs.historisierte-administrative_grenzen_g1?.language=en}. Download date: 2015-08-18
#' @examples
#' class(maps2)
#' length(maps2)
#' names(maps2)
#' # str(maps2[["g1k15"]])
#' 
#' # By name
#' maps2[["g1k15"]]
#' 
#' # By index
#' maps2[[5]]
#' @export
#' @name maps2
maps2 <- NULL


#' A list with 8 'sf' objects of swiss territory boundaries, at various levels.
#'
#' Every element of the list is a 'sf' data frame, which can be used with 'ggplot2'.
#'
#' Every 'sf' data frame has a column "geometry", which is a list-column containing
#' the boundaries of the polygons.
#' 
#' See the vignette (\code{vignette("ggswissmaps_with_sf", package = "ggswissmaps")}) 
#' for some examples.
#'
#' @format A list with 8 'sf' data frames with swiss territory boundaries (at various levels).
#' @source \url{https://data.geo.admin.ch/browser/index.html#/collections/ch.bfs.historisierte-administrative_grenzen_g1?.language=en}. Download date: 2015-08-18
#' @examples
#' data(shp_sf)
#' class(shp_sf)
#' length(shp_sf)
#' names(shp_sf)
#' str(shp_sf[["g1k15"]])
#' @name shp_sf
NULL


# utils::data("shp_df", envir = parent.env(environment()))
# maps2 <- lapply(shp_df, maps2_)
# rm(shp_df, envir = parent.env(environment()))

# Sostituito le due righe qui sotto (0.0.7) (e tolto maps2.rda dalla cartella data/)
# #' @name maps2
# NULL

# Con queste 4 (0.0.8)
# #' @name maps2
# #' @export
# data("shp_df")
# maps2 <- lapply(shp_df, maps2_)


# extract_data <- function(gg){
#   l <- ggplot2::ggplot_build(gg)
#   l$data[[1]]
# }
# 
# x <- extract_data(maps[[1]])
# str(x)
# 
# x <- extract_data(maps[["cantoni"]])
# str(x)
# 
# pcant <- ggplot(data = x, mapping = aes(x=x, y=y, group=group, fill=factor(group))) + geom_polygon() + coord_equal() + theme_white
# pcant
# pcant + theme(legend.position="none")
