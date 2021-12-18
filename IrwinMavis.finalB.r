print("BIOL 672 Final Project")

library("ggplot2")
library("dplyr")
library("caret")
library("MASS")

citation("MASS")

Note1=cat("The file with the full dataset has multiple worksheets and is too big./n
          I bet we can bind columns from different tables, but in best interests of/n 
          time, I am keeping this simple by making my own datatable in excel and export it as csv.")

data=read.csv("https://raw.githubusercontent.com/mavirwin/Project-672/main/ST00114_subset3.csv")
getwd()

print(data)

# #factor
# Pheno=as.factor(data$Phenotype);
# 
# #column groups
# Pebp1M=cbind(data$x413741,data$x413742,data$x413745)
# Pebp1F=cbind(data$x428689,data$x428693,data$x433002)
# Idh1M=cbind(data$x190701,data$x138120,data$x138110)
# Idh1F=cbind(data$x115900,data$x115996,data$x185262)
# WTM=cbind(data$x307710,data$x348926,data$x365959,data$x410683,data$x441144,data$x483044)
# WTF=cbind(data$x417795,data$x448374,data$x296904,data$x319741,data$x349029)
# 
# dataframe= data.frame(Pheno,Pebp1M,Pebp1F,Idh1M,Idh1F,WTM,WTF)
# subframe= data.frame(Pebp1M,Pebp1F,Idh1M,Idh1F,WTM,WTF)
# print(subframe)
# cat("I doubt this type of datatable would work right.")

#Renaming columns as groups then do transpose

# names(data)[c(12,13,14)] <- 'Pebp1M'
# names(data)[9:11] <- 'Pebp1F'
# names(data)[6:8] <- 'Idh1M'
# names(data)[3:5] <- 'Idh1F'
# names(data)[15:17] <- 'WTM'
# names(data)[18:20] <- 'WTF'
# names(data)[21:23] <- 'WTM'
# names(data)[24:25] <- 'WTF'
cat("Problem: the renaming process makes those I wanted the excat name was automatically adding numbers.\n
Since I need to finishe this ASAP, I tried to add names in excel and set formula as text to keep \n
    them the exact way as entered. But that doesn't work... how did the iris's individual plants grouped as species have the same names? ")
           
data2=data[-c(1,2)]

data3= as.data.frame(t(data2))
head(data3)

#mouse line groups as factor

mg=(data3$Pheno.nickname)

print(mg)

#phenotype evaluations

dataframe2 = data.frame(mg,data3$RAS,data3$PPI1,data3$PPI2,data3$PPI3,data3$PPI4,data3$Global)
subframe2 = data.frame(data3$RAS,data3$PPI1,data3$PPI2,data3$PPI3,data3$PPI4,data3$Global)
print (subframe2)


