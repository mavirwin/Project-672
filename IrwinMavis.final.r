print("BIOL 672 Final Project")

library("ggplot2")
library("dplyr")
library("caret")
library("e1071")
library("kernlab")
library("neuralnet")
library("keras")
library("tensorflow")

Note1=cat("The file with")

data=read.csv("https://github.com/mavirwin/Project-672/blob/main/ST00114_subset.csv")
#data=read.table("C:/Users/Videosystem/Desktop/RocASAsamples/Mavis_samples/archive/penguins_lter.txt", header=TRUE, sep="\t", )
#setwd("C:/Users/Videosystem/Desktop/RocASAsamples/Mavis_samples/archive")
getwd()

#remove NA observations
data.na.out2=na.omit(data.int)