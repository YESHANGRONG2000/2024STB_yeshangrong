salary = c(45, 50, 50, 55, 55, 60, 60, 65, 70, 90)  # Salary data
com2 = combn(salary, 2)  # Generates all possible combinations of 2 salaries from the salary data and stores them in 'com2'
print(com2)  # Prints the generated combinations

com2t = t(com2)  # Transpose of 'com2' (pairwise combinations from previous code)
z = rowMeans(com2t)  # Calculate the row-wise mean of the transposed data
barplot(table(z), xlab="연봉평균", ylab="도수", main="연봉평균의 분포")  # Create a bar plot of the frequency distribution of the averages

meanofz = mean(z)  # Calculate the mean of 'z', which contains the average values of each pair
print(meanofz)  # Print the mean of 'z'

data50 = c(1:50)  # Creates a vector with values from 1 to 50
com2 = combn(data50, 2)  # Generates all possible pairs (combinations of 2) from 'data50'
com2t = t(com2)  # Transposes the matrix of combinations
z2 = rowMeans(com2t)  # Calculates the row-wise mean for each pair in the transposed matrix
meanofz2 = mean(z2)  # Calculates the overall mean of the values in 'z2'
print(meanofz2)  # Prints the mean of 'z2'
barplot(table(z2), xlab="평균2", ylab="도수", main="표본크기2의 도수분포표")  # Creates a bar plot of the frequency distribution of 'z2'

com3 = combn(data50, 3)  # Generates all possible combinations of 3 elements from 'data50'
com3t = t(com3)  # Transposes the matrix of combinations
z3 = rowMeans(com3t)  # Calculates the row-wise mean for each combination in the transposed matrix
meanofz3 = mean(z3)  # Calculates the overall mean of the values in 'z3'
print(meanofz3)  # Prints the mean of 'z3'
barplot(table(z3), xlab="평균3", ylab="도수", main="표본크기3의 도수분포표")  # Creates a bar plot of the frequency distribution of 'z3'

com5 = combn(data50, 5)  # Generates all possible combinations of 5 elements from 'data50'
com5t = t(com5)  # Transposes the matrix of combinations
z5 = rowMeans(com5t)  # Calculates the row-wise mean for each combination in the transposed matrix
meanofz5 = mean(z5)  # Calculates the overall mean of the values in 'z5'
print(meanofz5)  # Prints the mean of 'z5'
barplot(table(z5), xlab="평균3", ylab="도수", main="표본크기5의 도수분포표")  # Creates a bar plot of the frequency distribution of 'z5'

sampling = c(1:100)  # Creates a vector containing numbers from 1 to 100
print(sampling)  # Prints the vector 'sampling'
sample(x = sampling, size = 10)  # Randomly selects 10 elements from

install.packages("sampling")  # Installs the 'sampling' package (only needed once)
library(sampling)  # Loads the 'sampling' package for stratified sampling functions

sam2 = strata(data = iris, stratanames = c("Species"), size = c(3, 3, 3), method = "srswor")  
# Creates a stratified sample from the 'iris' dataset using 'Species' as the stratum, 
# selecting 3 samples from each species without replacement

sample2 = getdata(data = iris, m = sam2)  # Extracts the selected data from the 'iris' dataset
print(sample2)  # Prints the stratified sample data







