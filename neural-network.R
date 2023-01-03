set.seed(69)
##Have to implement a 3 layer neural network:
## 1st layer will be the input layer (two neurons) -> means two features of two columns
# Hidden layer will have 4 neurons for now
# 3rd layer will be the output layer and will output a probability between 1 and 0 e.g threshhold = 0.5


#size of input layer
n_x <- 2
#size of hidden layer
n_h <- 4
#size of output layer
n_y <- 1

#The two inputs(The first two rows of the dataframe) are multiplied by random weights at first and then initialized
#Then an activation function is applied to the result of the multiplied.
# The new set of numbers are going to be the neurons of the hidden layer
#Then multiply again these neurons with another set of randomized wights + the activation function
# to obtain a single number (between 0 and 1)

#Then compare it to the true ouput



# Now to optimize our results we need to see how far off are the weights cause we need randomized it.
#THE LOSS FUNCTION COMES IN PLACE: CALCULATE THE GRADIENTS IN RESPECT WITH THE WEIGHTS
# Gradient will tell by how much we have to increase or decrease each weight parameter
# Repeat the process with the second input sample (second row)
# After all the samples have been used means that we have our first EPOCH

#REPEAT TILL THE LOSS FUNCTION STOPS DECREASING
#
#ACTIVATION FUNCTION EXPLANATION:
#1: Enables to to learn complex features, so takes the linear fucntionaality of a neural network to a higher dimension
# TYPES OF ACTIVATION FUNCTIONS:
# 1. sigmoid(x)
# 2. tanh(x)
# 3. max(0,x)

#


#CONSTRUCT THE DATASET
df <-read.csv(file = 'C:/Users/ironm/PycharmProjects/AI-Monster/2022.csv')
df<- df[sample(nrow(df)),]


train_test_split_data <- 0.8 * nrow(df)
train <- df[1:train_test_split_data,]
head(train)

X_train <- scale(train[, c(1:2)])

y_train <- train$Tournament
dim(y_train) <- c(length(y_train), 1)

X_test <- scale(test[, c(1:2)])
y_test <- test$Tournament
dim(y_test) <- c(length(y_test), 1)
