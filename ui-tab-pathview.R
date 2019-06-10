tabItem(tabName = "pathviewTab",
        h2(strong("Pathview Plot")),
        wellPanel(
          column(6,
                 
                 selectizeInput("pathwayIds", label="Select Pathway ID",
                                choices=NULL,
                                multiple=F,
                                options = list(
                                  placeholder =
                                    'Start typing pathway id'
                                )
                 )
                 
                 )
          ,
          column(6,
                 selectInput("geneid_type","Gene ID type:", choices = c(""), selected = NULL)
                 ),
          column(4,
                 actionButton("generatePathview", "Generate Pathview", class = "btn btn-info")
                 ),
          tags$div(class = "clearBoth")
          
        ),
        withSpinner(imageOutput(outputId = "pathview_plot"),type = 8)
        
        
)