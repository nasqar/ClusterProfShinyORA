tabItem(tabName = "keggPlotsTab",
        h2(strong("KEGG Plots")),
        tags$div(
        box(title = "Bar Plot", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "barplot",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("showCategory_bar_kegg", "number of categories to show", value = 10)
                     )
                     ),
              column(9,
                     wellPanel(
                       withSpinner(plotOutput(outputId = "barPlot_kegg"),type = 8)
                     )
                  )
            )
        ),
        box(title = "Dot Plot", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "dotplot",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("showCategory_dot_kegg", "number of categories to show", value = 10)
                     )
              ),
              column(9,
                     wellPanel(
                       withSpinner(plotOutput(outputId = "dotPlot_kegg"),type = 8)
                     )
              )
            )
        ),
        box(title = "Encrichment plot map", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "enrichPlotMap_kegg",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("showCategory_enrichmap_kegg", "number of categories to show", value = 5)
                     )
              )
              ,
              column(9,
                     wellPanel(
                      plotOutput(outputId = "enrichPlotMap_kegg")
                     )
              )
            )
        ),
        box(title = "Category Netplot", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "cnetplot",
            fluidRow(
              column(12,
                     wellPanel(
                       numericInput("showCategory_cnet_kegg", "number of categories to show", value = 5)
                     )
              ),
              column(12,
                     wellPanel(
                       plotOutput(outputId = "cnetplot_kegg",width = "100%", height = "400px")
                     )
              )
            )
        )
        
        , style = "display:table;")
)