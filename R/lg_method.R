LG_method = function(formula, fit_model, data, ...){
  # computes a Logistic method using rpart!
  # output is a trained Logistic method

  lg_method <- NULL

  lg_method <- glm(formula = formula, data = data, family = "binomial", ...)

  return(lg_method)
}
