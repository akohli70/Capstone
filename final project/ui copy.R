shinyUI(fluidPage(
    
titlePanel("Prediction Algorithm"),
tabsetPanel(type='tab',
    tabPanel("Predict Next Word",
        sidebarLayout(

            sidebarPanel(
                textInput('sent_frag',label="Your sentence:",value="Enter text here "),
                actionButton('goButton',"Submit"),
                br(),br(),
                helpText("Note:",br(), 
                         "First letter of the word can be used to improve results",
                         br(),br(),
                         "Example:",br(),
                         "Type 'What is the next w'. Hit 'Submit' and see multiple words the model has predicted"),
                br(),
                uiOutput('tokens')),
        
            mainPanel(
                 plotOutput('predict',width='700px',height='500px'),
                 br(),br(),strong("Possible other choices:"),
                 plotOutput('wordcloud',width='600px',height='500px'))
        )
    ),
    
    tabPanel("About the Application",
         h2("Word Cloud Inspired by Fereshteh Karimrddini, http://shiny.rstudio.com/gallery/word-cloud.html")
    )
#    tabPanel("About the Application",
#             h2("Word Cloud Inspired by Fereshteh Karimrddini -- http://shiny.rstudio.com/gallery/word-cloud.html"),
#             h3("Most Common Words, Bigrams & Trigrams"),
#             plotOutput('top12gram',width='1000px',height='500px'),
#             plotOutput('top34gram',width='1000px',height='500px'),
#             h3("Most Common Words to Start & End a Sentence"),
#             plotOutput('firstNlastWord',width='1000px',height='500px'),
#             plotOutput('firstNlast2Words',width='1000px',height='500px'),
#             h3("Word Appearance Follows a Zipf's Law Power Distribution"),
#             plotOutput('ZipfLaw',width='500px',height='500px')
#    )
    
)
))