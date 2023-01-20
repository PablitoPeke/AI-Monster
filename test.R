#Test 
options(repos = c(CRAN = "https://cran.r-project.org"))


library(dplyr)
library(keras)
library(caret)
df <-read.csv(file ='C:/Users/ironm/Documents/COMPSCI 3/Dissertation/AI-Monster/2022.csv')
set.seed(123)
indices <- sample(1:nrow(df), round(0.8*nrow(df)))
df_train <- df[indices,]
df_test <- df[-indices,]

df_train_encoded <- df_train %>%
  mutate_if(is.character, as.factor) %>%
  mutate_if(is.factor, as.numeric)



df_train_encoded[,-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14)] <- scale(df_train_encoded[,-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14)])


model <- keras_model_sequential() 
model %>% 
  layer_dense(units = 64, activation = 'relu', input_shape = c(ncol(df_train_encoded) - 14)) %>% 
  layer_dense(units = 32, activation = 'relu') %>%
  layer_dense(units = 2, activation = 'softmax')


model %>% compile(
  loss = 'categorical_crossentropy',
  optimizer = 'adam',
  metrics = c('accuracy')
)



history <- model %>% fit(
  df_train_encoded[,-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14)],
  df_train_encoded[,c(1,2)], 
  epochs = 30, 
  batch_size = 32, 
  validation_split = 0.2
)
