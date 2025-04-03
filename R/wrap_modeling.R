###########################################################
##############   Classification Functions  ################
###########################################################


train_model = function(formula, data, fit_model, ...){
  source("m_function.R")
  m_function(formula, data, fit_model, ...)
}


# data = read.csv("Base Unificada.csv")
# data$label = as.factor(data$label)
#
# # Criar os índices de treino de forma estratificada
# indices_treino <- caret::createDataPartition(data$label, p = 0.7, list = FALSE)
#
# # Criar os conjuntos de treino e teste
# treino <- data[indices_treino, ]
# teste <- data[-indices_treino, ]
#
# modelo_rf <- train_model(formula = label~., data = data, fit_model = "RF")
#
# previsoes_rf <- predict(modelo_rf, teste)
#
# conf_matrix_rf <- caret::confusionMatrix(previsoes_rf, teste$label)
#
# print(conf_matrix_rf)
