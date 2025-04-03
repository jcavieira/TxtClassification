SVM_method = function(formula, fit_model, data, ...){
  # computes a SVM method using rpart!
  # output is a trained SVM method

  svm_method <- NULL

  svm_method <- e1071::svm(formula = formula, data = data, kernel = "linear", ...)

  return(svm_method)
}
