# standardize
This is a block of R Code to Normalize a Set of Columns in a Data Frame.

It is only a few lines, but when comparing and analyzing potentially many variables (thinking of linear regression, neural nets), standardizing each variable individually can become tedious. If the columns in need of normalization are sequential (e.g. columns 5-55), then this code sweeps across the columns of the data frame normalizing each one. Granted, this assumes that there are a sufficient number of non-null rows in the data frame that one can compute a standard deviation without an error. 

There is no "stop if you hit an error" contingency built in just yet, so feel free to comment any modifications you feel improve the functionality of this program. 
