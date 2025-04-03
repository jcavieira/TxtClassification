RF_method = function(formula, fit_model, data, ...){
  # computes a random forest method using rpart!
  # output is a trained random forest method

  rf_method <- NULL

  rf_method <- randomForest::randomForest(formula = formula, data = data, ...)

  return(rf_method)
}
