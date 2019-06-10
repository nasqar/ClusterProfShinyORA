tabItem(tabName = "wordcloudTab",
        h2(strong("GO Plots")),
        box(title = "Word Cloud", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "wordcloud",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("maxWords", "Max. Words", value = 25),
                       radioButtons("wordsColor","Color theme:", c("Light"="random-light", "Dark"="random-dark")),
                       selectizeInput("wordShape","Shape:", c("circle","cardioid","diamond","triangle-forward","triangle","triangle","star")),
                       radioButtons("wordcloudGoOrKegg","Type:", choices = c("enrichGo","enrichKEGG")),
                       actionButton("plotWordcloud","Plot Word Cloud", class = "btn btn-info")
                     )
              ),
              column(9,
                     wellPanel(
                       wordcloud2Output(outputId = "wordcloud")
                     )
                     
              )
            )
        )
        # ,
        
        # box(title = "Word Cloud", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "wordcloud_kegg",
        #     fluidRow(
        #       column(3,
        #              wellPanel(
        #                numericInput("maxWords_kegg", "Max. Words", value = 25),
        #                radioButtons("wordsColor_kegg","Color theme:", c("Light"="random-light", "Dark"="random-dark")),
        #                selectizeInput("wordShape_kegg","Shape:", c("circle","cardioid","diamond","triangle-forward","triangle","triangle","star"))
        #              )
        #       ),
        #       column(9,
        #              wellPanel(
        #                wordcloud2Output(outputId = "wordcloud_kegg")
        #              )
        #              
        #       )
        #     )
        # )
        
)