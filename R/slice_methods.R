slice_methods = function(formula, fit_model, data, ...){
  if(fit_model == "DT"){
    source("R/dt_method.R")
    DT_method(formula, fit_model, data, ...)
  }
  if(fit_model == "RF"){
    source("R/rf_method.R")
    RF_method(formula, fit_model, data, ...)
  }
  if(fit_model == "LG"){
    source("R/lg_method.R")
    LG_method(formula, fit_model, data, ...)
  }
  if(fit_model == "SVM"){
    source("R/svm_method.R")
    SVM_method(formula, fit_model, data, ...)
  }
  if(fit_model == "NN"){
    source("R/rf_method.R")
    NN_method(formula, fit_model, data, ...)
  }
}
