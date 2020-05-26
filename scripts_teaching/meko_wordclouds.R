# Description: make wordclouds from hand-ins
# Author: David Langenohl
# Date: 2020-05-26

#empty the working space and load functions (needed packages are loaded automatically)
rm(list = ls())

source("functions/pdf_split_function.R")
source("functions/wordcloud_function.R")

#set working directory
setwd(dirname(rstudioapi::getSourceEditorContext()[[2]]))

##########################################################################################################################################################
## Split PDFs ##
###############
## the handed-in PDF-files need to be splitted before creating a wordcloud; if not already done, use the following function
# define name of folder, the students downloaded homework are placed at (in this version, this folder should be directly placed in the working directory)
folder_name <- "Lerneinheit_01"
inpath <- file.path(getwd(), folder_name)

# define number of unit
unit = "01"

# define number of pages for every task 
split_rule <- data.frame(exs = c("1L1", "1L2", "1L3", "2L1", "2L2", "2L3", "3L1", "3L2", "3L3"), 
                         no_of_pages = c(1,1,1,1,1,1,1,1,1))

split_pdfs(inpath = inpath, unit = unit, split_rule = split_rule, testing_for_names = F)

##########################################################################################################################################################
## Create wordcloud for specific task ##
#######################################

# define name of folder the splitted PDFs are placed at
folder_name_splitted <- "Lerneinheit_01_pdf_splits"

# define number of unit
unit = "01"

# define task
task = "2L3"

# specify, how much words should be shown in the wordcloud
max_words = 50

# create wordcloud
meko_wordcloud(unit = unit, task = task, folder_name_splitted = folder_name_splitted, max_words = max_words)
