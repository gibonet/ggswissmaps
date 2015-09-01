#' theme_white_f is a ggplot2 theme function that can be added to a ggplot2 object  
#' to eliminate axes, ticks and put white background
#' 
#' @param base_size base font size
#' @param base_family base font family
#' 
theme_white_f <- function(base_size = 12, base_family = ""){
  theme_bw(base_size = base_size, base_family = base_family) %+replace%
    theme(
      legend.background = element_blank(),
      legend.key = element_blank(),
      panel.background = element_blank(),
      panel.border = element_blank(),
      #  strip.background = element_blank(),
      plot.background = element_blank(),
      axis.title = element_blank(),
      axis.text = element_blank(),
      axis.ticks = element_blank(),
      panel.grid = element_blank()
    )
  }