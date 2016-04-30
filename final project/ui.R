shinyUI(fluidPage(
    
titlePanel("Prediction Algorithm"),
tabsetPanel(type='tab',
    tabPanel("Predict Next Word",
        sidebarLayout(

            sidebarPanel(
                textInput('sent_frag',label="Input a phrase (multiple words)",value="What is the next w"),
                actionButton('goButton',"Submit"),
                br(),br(),
                helpText("Example:",br(),
                         "Type 'What is the next w'. Hit 'Submit' and see multiple words the model has predicted"),
                br(),
                uiOutput('tokens')),
        
            mainPanel(
                 br(),strong("Word Prediction Results"),tableOutput('predict'))
        )
    ),
    
    tabPanel("About the Application",
         mainPanel(
           includeMarkdown("README.md")
    ))
)))