# packages:

if(require(pacman)){
  p_load(rpart,randomForest,stats,e1071,nnet,keras,magrittr,dplyr)
}else{
  install.packages("pacman")
  pacman::p_load(rpart,randomForest,stats,e1071,nnet,keras,magrittr,dplyr)
}

# Function:
m_function = function(formula, data, fit_model, ...){
  if(formula %>% is.null()){
    stop("objeto 'formula' can't be NULL")
  }
  if(!data %>% is.data.frame()){
    stop("'data' must be data.frame format!")
  }
  if(fit_model %>% is.null()){
    stop("objeto 'fit_model' must be one of model options")
  }
  if(!fit_model %in% c("DT", "RF", "LG", "SVM", "NN")){
    stop("objeto 'fit_model' must be one of model options")
  }

}
