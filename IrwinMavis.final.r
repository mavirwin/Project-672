print("BIOL 672 Final Project")

library("ggplot2")
library("dplyr")
library("caret")
library("MASS")

citation("MASS")

Note1=cat("The file with")

data=read.csv("https://raw.githubusercontent.com/mavirwin/Project-672/main/ST00114_subset.csv")
getwd()

#factor
Pheno=as.factor(data$Phenotype);

#column groups
Pebp1M=(cbind(data$x413741,data$x413742,data$x413745))
Pebp1F=cbind(data$x428689,data$x428693,data$x433002)
Idh1M=cbind(data$x190701,data$x138120,data$x138110)
Idh1F=cbind(data$x115900,data$x115996,data$x185262)
WTM=cbind(data$x307710,data$x348926,data$x365959,data$x410683,data$x441144,data$x483044)
WTF=cbind(data$x417795,data$x448374,data$x296904,data$x319741,data$x349029)

#mean and sd of column groups
M.Pebp1M=rowMeans(cbind(data$x413741,data$x413742,data$x413745))
M.Pebp1F=cbind(data$x428689,data$x428693,data$x433002)
M.Idh1M=cbind(data$x190701,data$x138120,data$x138110)
M.Idh1F=cbind(data$x115900,data$x115996,data$x185262)
M.WTM=cbind(data$x307710,data$x348926,data$x365959,data$x410683,data$x441144,data$x483044)
M.WTF=cbind(data$x417795,data$x448374,data$x296904,data$x319741,data$x349029)

print(M.Pebp1M)

# SD.Pebp1M=cbind(data$x413741,data$x413742,data$x413745)
# SD.Pebp1F=cbind(data$x428689,data$x428693,data$x433002)
# SD.Idh1M=cbind(data$x190701,data$x138120,data$x138110)
# SD.Idh1F=cbind(data$x115900,data$x115996,data$x185262)
# SD.WTM=cbind(data$x307710,data$x348926,data$x365959,data$x410683,data$x441144,data$x483044)
# SD.WTF=cbind(data$x417795,data$x448374,data$x296904,data$x319741,data$x349029)

dataframe= data.frame()


