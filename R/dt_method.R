DT_method = function(formula, fit_model, data, ...){
  # computes a decision tree method using rpart!
  # output is a trained decision tree method

  dt_method <- NULL

  dt_method <- rpart(formula = formula, data = data, method = "class", ...)

  return(dt_method)
}
