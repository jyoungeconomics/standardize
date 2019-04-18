# mydata is a data frame with n rows and k columns
# we want to standardize M of the columns, c(1)-c(M) by subtracting the mean 
# of each column and dividing that difference by the standard deviation of
# that same column
# we are leaving columns 1,2,...c(0) untouched

# first define the parameters of this task, the starting and ending columns
# begin by normalizing column #3
c.start <- 3
# stop at normalizing column #12
c.stop <- 12

# now perform the calculation for columns 3-12
mydata.norm <- cbind.data.frame(mydata[,1:(c.start-1)],apply(mydata[,c.start:c.stop],c(2),function(x){((x-mean(x))/sd(x))}))

# check to see if it worked:
# compute mean and sd of an example column, say, #3 for the un-normed data and the standardized data
# without normalization, the mean and sd should not be 0 and 1 (respectively), but they should be when normalized
cbind(c(mean(mydata[,c.start]),sd(mydata[,c.start])),
      c(mean(mydata.norm[,c.start]),sd(mydata.norm[,c.start])))
