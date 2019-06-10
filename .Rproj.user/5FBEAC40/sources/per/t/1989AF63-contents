tabItem(tabName = "enrichGoTab",
        
        conditionalPanel("output.enrichGoAvailable",
                         
                                  column(2,
                                         h3(strong("enrichGo Results")),
                                         hr(),
                                         downloadButton('downloadEnrichGoCSV','Save Results as CSV File', class = "btn btn-info", style="margin: 7px;"),
                                         actionButton("gotoGoPlots","enrichGo Plots",class = "btn btn-warning",icon = icon("chart-area"), style="margin: 7px;"),
                                         actionButton("gotoWordcloud","Word Cloud",class = "btn btn-warning",icon = icon("chart-area"), style="margin: 7px;")
                                         ),
                                  column(10,
                                         tags$div(class = "BoxArea2",
                                          withSpinner(dataTableOutput('enrichGoTable'))
                                         ),
                                         tags$div(class = "clearBoth")
                                         ),
                                  tags$div(class = "clearBoth")
                         
        ),
        hr(),
        conditionalPanel("output.enrichKEGGAvailable",
                         
                                  column(2,
                                         h3(strong("enrichKEGG Results")),
                                         hr(),
                                         downloadButton('downloadEnrichKEGGCSV','Save Results as CSV File', class = "btn btn-info", style="margin: 7px;"),
                                         actionButton("gotoKeggPlots","enrichKEGG Plots",class = "btn btn-warning",icon = icon("chart-area"), style="margin: 7px;"),
                                         actionButton("gotoPathview","Generate Pathview Plot",class = "btn btn-warning",icon = icon("chart-area"), style="margin: 7px;"),
                                         
                                         wellPanel(h4(strong("Output warning:")),
                                                   htmlOutput("warningText"), style = "background-color: #f9d8d3;")
                                         
                                         ),
                                  column(10,
                                         tags$div(class = "BoxArea2",
                                         withSpinner(dataTableOutput('enrichKEGGTable'))
                                         ),
                                         tags$div(class = "clearBoth")
                                         ),
                                  tags$div(class = "clearBoth")
                         
        )
)