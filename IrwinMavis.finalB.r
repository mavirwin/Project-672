print("BIOL 672 Final Project")

library("ggplot2")
library("dplyr")
library("caret")
library("MASS")

citation("MASS")

Note1=cat("The file with the full dataset has multiple worksheets and is too big./n
          I bet we can bind columns from different tables, but in best interests of/n 
          time, I am keeping this simple by making my own datatable in excel and export it as csv.")

data=read.csv("https://raw.githubusercontent.com/mavirwin/Project-672/main/ST00114_subset.csv")
getwd()

#factor
Pheno=as.factor(data$Phenotype);

#column groups
Pebp1M=cbind(data$x413741,data$x413742,data$x413745)
Pebp1F=cbind(data$x428689,data$x428693,data$x433002)
Idh1M=cbind(data$x190701,data$x138120,data$x138110)
Idh1F=cbind(data$x115900,data$x115996,data$x185262)
WTM=cbind(data$x307710,data$x348926,data$x365959,data$x410683,data$x441144,data$x483044)
WTF=cbind(data$x417795,data$x448374,data$x296904,data$x319741,data$x349029)

dataframe= data.frame(Pheno,Pebp1M,Pebp1F,Idh1M,Idh1F,WTM,WTF)
subframe= data.frame(Pebp1M,Pebp1F,Idh1M,Idh1F,WTM,WTF)
print(subframe)
cat("I don't think the datatable would work right.")

#Renaming columns as groups then do transpose

Pebp1M=rename(data$x413741,data$x413742,data$x413745)
Pebp1F=rename(data$x428689,data$x428693,data$x433002)
Idh1M=cbind(data$x190701,data$x138120,data$x138110)
Idh1F=cbind(data$x115900,data$x115996,data$x185262)
WTM=cbind(data$x307710,data$x348926,data$x365959,data$x410683,data$x441144,data$x483044)
WTF=cbind(data$x417795,data$x448374,data$x296904,data$x319741,data$x349029)
print(Pebp1M)

