# Pacotes:

if(require(pacman)){
  p_load(rpart,randomForest,stats,e1071,nnet,keras,magrittr,dplyr)
}else{
  install.packages("pacman")
  pacman::p_load(rpart,randomForest,stats,e1071,nnet,keras,magrittr,dplyr)
}