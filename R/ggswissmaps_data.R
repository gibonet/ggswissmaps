#' A list with 8 maps of Switzerland's territory at various levels.
#'
#' Every element of the list is a ggplot2 object which is
#' already ready to plot. 
#' \itemize{
#'   \item distretti. Swiss districts
#'   \item comuni. Swiss communes (2014)
#'   \item boh. Don't know
#'   \item boh2. Don't know 2
#'   \item cantoni. Swiss cantons
#'   \item ch. Swiss national boundaries
#'   \item gr. Swiss big regions (NUTS3)
#' }
#'
#' @format A list with 16 ggplot2 maps with swiss territory
#' @source \url{http://www.bfs.admin.ch/bfs/portal/fr/index/dienstleistungen/geostat/datenbeschreibung.html}
#' @examples
#' data(maps)
#' maps[[1]]
#' names(maps)
#' maps[["cantoni"]]
#' str(maps[["cantoni"]])
#' str(maps[["cantoni"]]$data)
#' @name maps
NULL



#' Offers various swiss maps as ggplot2 objects.
#'
#' Offers various swiss maps as ggplot2 objects and gives the possibility
#' to add layers of data on the maps. Data are publicly available from the
#' swiss federal statistical office.
#'
#' There are only two objects in package \pkg{ggswissmaps}:
#' \code{theme_white} (for white background of ggplot2 objects) and \code{maps} (a list of 8 swiss maps).
#' 
#'
#' @docType package
#' @name ggswissmaps
NULL


#' theme_white is a ggplot2 theme object and can be added to a ggplot2 object  
#' to eliminate axes, ticks and put white background
theme_white <- theme(
  axis.title=element_blank(),
  axis.text=element_blank(),
  axis.ticks=element_blank(),
  axis.line=element_blank(),
  panel.background=element_blank(),
  panel.border=element_blank(),
  panel.margin=element_blank(),
  panel.grid=element_blank()
)
#' @name theme_white
NULL


#' A list with 158 data frames of swiss territory boundaries, at various levels.
#'
#' Every element of the list is a data frame, which can be used with ggplot2.
#'
#' Columns are not all the same across data frames, but usually they have the following in common:
#' \itemize{
#'   \item long. Longitude coordinate (x)
#'   \item lat. Latitude coordinate (y)
#'   \item group. A factor to be used to plot the polygons correctly (with ggplot2)
#' }
#'
#' @format A list with 158 data frames with swiss territory boundaries (at various levels).
#' @source \url{http://www.bfs.admin.ch/bfs/portal/fr/index/dienstleistungen/geostat/datenbeschreibung.html}
#' @examples
#' data(shp_df)
#' class(shp_df)
#' length(shp_df)
#' names(shp_df)
#' str(shp_df[["g1k15"]])
#' @name shp_df
NULL

#' A list with 158 ggplot2 objects of swiss territory boundaries, at various levels.
#'
#' Every element of the list is a ggplot2 graphic, corresponding to an element of \code{shp_df}.
#'
#' Columns are not all the same across data frames, but usually they have the following in common:
#' \itemize{
#'   \item long. Longitude coordinate (x)
#'   \item lat. Latitude coordinate (y)
#'   \item group. A factor to be used to plot the polygons correctly (with ggplot2)
#' }
#'
#' @format A list with 158 data frames with swiss territory boundaries (at various levels).
#' @source \url{http://www.bfs.admin.ch/bfs/portal/fr/index/dienstleistungen/geostat/datenbeschreibung.html}
#' @examples
#' data(maps2)
#' class(maps2)
#' length(maps2)
#' names(maps2)
#' # str(maps2[["g1k15"]])
#' 
#' # By name
#' maps2[["g1k15"]]
#' 
#' # By index
#' maps2[[147]]
#' @name maps2
NULL


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