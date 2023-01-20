

df <-read.csv(file ='C:/Users/ironm/Documents/COMPSCI 3/Dissertation/AI-Monster/2022.csv') # nolint


df<- na.omit(df)


# Changes the species column to numeric
df[sapply(df,is.factor)]<-data.matrix(df[sapply(df,is.factor)])
label <- df[, 10]
str(df[,2:8])
#df[,2:8]<- as.numeric(df[,2:8])
df[,2:8] <- lapply(df[,2:8], as.numeric)
tennis_scaled <- cbind(df,label)
