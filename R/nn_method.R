NN_method = function(formula, fit_model, data, ...){
  # computes a Neural Network method using rpart!
  # output is a trained Neural Network method

  rn_method <- NULL

  rn_method <- nnet::nnet(formula = formula, data = data, size = 5, maxit = 500, ...)

  return(rn_method)
}


