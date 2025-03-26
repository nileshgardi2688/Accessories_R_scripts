#Assume the data is as follows:
#data = n x m matrix of mean centered gene expression data (n = # of genes, m = # of samples)
#class.labels = vector of length m containing the class labels

#Load SigClust and specify class labels of interest
library(sigclust)
class1 = 3							#First class to compare
class2 = 4							#Second class to compare

#Restrict expression data and class labels to those subjects that are of interest.
#Note that class labels for SigClust must equal 1 and 2 when labflag = 1.
subset = union(which(class.labels == class1), which(class.labels == class2))
data.to.test = data[,subset]
classes.to.test = 1 + as.numeric(class.labels[subset] == class1)	
								
#Run SigClust and extract p-values
sig.stuff = sigclust(x = t(data.to.test), nsim =  1000, nrep = 1, labflag = 1, 
	label = classes.to.test, icovest = 3)
sig.stuff@pval						#Permutation-based p-value	
sig.stuff@pvalnorm					#p-value from multivariate normal
