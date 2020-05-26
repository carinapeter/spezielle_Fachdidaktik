# Description: script for splitting and merging of students' hand-ins for MeKo and checking for possible plagiats
# Author: Alice Ziegler, David Langenohl
# Date: 2020-05-25

#empty working space
rm(list=ls())

#load libraries
require(pdftools)
require(textreuse)

#load functions for splitting and merging
source("pdf_split.R")
source("pdf_merge.R")


#set working directory
setwd(dirname(rstudioapi::getSourceEditorContext()[[2]]))

#define name of folder, the students downloaded homework are placed at (in this version, this folder should be directly placed in the working directory)
folder_name <- "Lerneinheit_01"
inpath <- file.path(getwd(), folder_name)

#define number of unit
unit = 1

#define number of pages for every task 
## e.g.: if for task 1L3 3 pages shall be handed in, write a 3 at the third place 
split_rule <- data.frame(exs = c("1L1", "1L2", "1L3", "2L1", "2L2", "2L3", "3L1", "3L2", "3L3"), 
                         no_of_pages = c(1,1,1,1,1,1,1,1,1))

#################
## Split PDFs ##
###############
## gives back a data frame, containing information about students which: 
### handed in non-PDF files
### did not use empty pages for tasks they did not do
### did not write their name on every page (you need to set "testing_for_names == T" for this; takes very long)

wrong_format <- split_pdfs(inpath = inpath, unit = unit, split_rule = split_rule, testing_for_names = F)

#################
## Merge PDFs ##
###############
## merges the splitted PDFs to 9 PDF files, one for each task

merge_pdfs(inpath = inpath, unit = unit, split_rule = split_rule)

##################################
## Check for possible plagiats ##
################################
## writes the result of every checked assignment into a csv-file
## caution: takes long to being processed

#specifiy directory the merged PDFs are stored at (in this version, this folder is created by the merge_pdf-function)
foldername <- "Lerneinheit_01_pdf_merged"

merged_files <- as.list(list.files(file.path(getwd(), foldername), pattern = "_all_merged.pdf"))

possible_similarities <- lapply(merged_files, function(merged_pdf){
  
  students_pdf <- file.path(getwd(), foldername, merged_pdf)
  
  # extract text from pdf; store every page as seperate item in a vector (needed to create corpus) 
  extracted_text <- as.vector(pdf_ocr_text(students_pdf))
  
  # create corpus (specific element needed for comparison-function) and do comparison
  ## each text is divided into n tokes that are then compared to each other
  corpus <- TextReuseCorpus(text = extracted_text,
                            tokenizer = tokenize_ngrams, n = 25)
  
  comparisons <- as.data.frame(pairwise_compare(corpus, jaccard_similarity))
  
  # reduce to pairs of possible plagiats
  possible_plagiats <- which(comparisons > 0.2, arr.ind=TRUE)
  
  #write to csv-file
  write.csv(possible_plagiats, file.path(getwd(), foldername,  paste0(tools::file_path_sans_ext(merged_pdf), "_similarities.csv")))
  return(possible_plagiats)
})

