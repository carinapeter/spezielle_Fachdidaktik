# Description: split and reassemble hand_ins for Meko by task
##main source: https://www.r-bloggers.com/join-split-and-compress-pdf-files-with-pdftools/
# Author: Alice Ziegler
# Date: 2020-05-08 12:07:30
# to do: WARNING: ...(object 10 0): object has offset 0 ??was bedeutet das? stört das?
# even if not enough pages - should run + at least be put into numbers that are valid
# stamp with name and Matrikelnummer on pdf. ?possible?
rm(list=ls())

#####
###abgefangene Fehler
#####
# different number of pages
# not a pdf
########################################################################################
###Presettings
########################################################################################
#####
###load packages
#####
library(pdftools)
#####
###set paths
#####
setwd(dirname(rstudioapi::getSourceEditorContext()[[2]]))
inpath <- "../Abgaben/Unit01/Lerneinheit01_22269/"

#####
###sinnvolle Ordnerstruktur mit diesem Skript (# als Ebenen)
#####

#src
##dieses Script

#Abgaben
##Unit01
###Lerneinheit01_22269 (automatischer ILIAS Name - aber entfernte Leerzeichen!)
####studi1
#####Abgabe.pdf
####studi2
#####Abgabe.pdf
#...
###pdf_merged (wird erstellt)
####finale pdfs je Teilaufgabe
#...
###pdf_splits
####unit1_1L1
#####einzel pdfs aller studis jeweils nur 1 Teilaufgabe
####unit01_1L2
#####einzel pdfs aller studis jeweils nur 1 Teilaufgabe



#####
###read files
#####
#name of unZipped-folder from ILIAS
folder_nms <- list.files(inpath, recursive = F)

#####
###Settings
#####
unit <- 1

split_rule <- data.frame(exs = c("1L1", "1L2", "1L3", "2L1", "2L2", "2L3", "3L1", "3L2", "3L3"), 
                         ex_end = c(1,2,3,4,5,6,7,8,9))

########################################################################################
###functions
########################################################################################
#######################
###split pdfs into different folders per exercise. each student has one pdf per exercise
#######################

pdf_folder_by_task <- function(inpath, folder_nms, unit, split_rule){
  problems <- c()
  for (j in folder_nms){ #loop over students folders
    print(j)
    file_nm <- list.files(paste0(inpath,j))
    if((substr(file_nm,nchar(file_nm)-3,nchar(file_nm))) == ".pdf"){ # check if pdf
    pages <- pdf_info(paste0(inpath, j, "/", file_nm))$pages
    #Fehler abfangen: 
    if (pages == max(split_rule$ex_end)){ # check if right number of pages
    for (i in seq(nrow(split_rule))){
      print(i)
        #Ordner für jede Teilaufgabe erstellen
        ex_nm <- paste0("unit", unit, "_", split_rule$exs[i])
        subfolder <- paste0(inpath, "../pdf_splits/", ex_nm, "/")
        
        #check if folder exists
        if (file.exists(subfolder)==F){
          dir.create(file.path(subfolder), recursive = T)
        }
        #start und end Seiten festlegen
        if (i == 1){
          ex_start <- 1
        } else{
          ex_start <- split_rule$ex_end[i-1]+1
        }
        
        ex_end <- split_rule$ex_end[i]
        
        j_elements <- strsplit(j, "_")
        studi <- paste0(j_elements[[1]][length(j_elements[[1]]) - 3], "_", j_elements[[1]][length(j_elements[[1]])])
        #file splitten und in Ordner aufteilen
        pdf_subset(paste0(inpath, j,"/", file_nm), pages = ex_start:ex_end, 
                   output = paste0(subfolder, studi, ex_nm, ".pdf"))
    }
    }else{
      problems <- c(problems, j)
    }
    }else{
      problems <- c(problems, j)
    }
  }
  return(problems)
}

#######################
###merge all students of one exercise together
#######################


pdf_merge_by_folder <- function(inpath, unit, split_rule){
  inpath_folders <- paste0(inpath, "../pdf_splits/")
  merged_folder <- paste0(inpath, "../pdf_merged/")
  if (file.exists(merged_folder)==F){
    dir.create(file.path(merged_folder), recursive = T)
  }
  folders <- list.files(path = inpath_folders, recursive = F, include.dirs = T)
  for (i in folders){
    print(i)
    pdf_nms <- list.files(paste0(inpath_folders, i), full.names = T)
    
    pdf_combine(pdf_nms, output = paste0(merged_folder, i, "_all_merged.pdf")) #"merged.pdf" )#
  }
  
}

########################################################################################
###Do it
########################################################################################
#split
split_problems <- pdf_folder_by_task(inpath = inpath, folder_nms = folder_nms, unit = unit, split_rule = split_rule)

#merge
pdf_merge_by_folder(inpath = inpath, unit = unit, split_rule = split_rule)