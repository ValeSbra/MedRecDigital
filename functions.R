
# GGPLOT THEME ------------------------------------------------------------

theme_base <- function(){ 
  font <- "Roboto"   # assign font family up front
  
  theme_minimal() %+replace%    # replace some elements
    
    theme(
      
      # panel and grid elements
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(colour = "#c4cfcf"),
      axis.ticks = element_blank(),
      panel.border = element_blank(),
      
      # text elements
      axis.title = element_text(
        family = font,
        size = 11,
        face = "bold"),
      
      axis.text = element_text(
        family = font,
        size = 10),
      
      axis.text.x = element_text(
        angle = 45, hjust = 1, vjust = 1.2)
    )
}
