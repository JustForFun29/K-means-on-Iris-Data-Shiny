## Deployed app in Shiny web site: 

https://dimash.shinyapps.io/Downloads/

## How to run:

Open R script or Rmd notebook on your laptop and do the following:

You will need the following package to be installed:
```
install.packages("shiny")
```

The app can then be run from within the R console with the following code:
```
library("shiny")  
runGitHub("JustForFun29/K-means-on-Iris-Data-Shiny")  
```

## Assignment Description:

Visual implementation of the k-means clustering algorithm using Shiny library to cluster a data set. Used a data set from the UC Irvine Machine Learning Repository at: https://archive.ics.uci.edu/ml/index.html.


## Motivation: 
1.What data you collected?:
I used iris dataset https://archive.ics.uci.edu/ml/datasets/Iris
2.Why this topic is interesting or important to you? 
Because iris dataset is very simple, most common and convinient for k-means clustering.
3.How did you analyze the data?
There is no need of data preprocessing, information about classes I got from the official website 
4.What did you find in the data?
The data set contains 3 classes of 50 instances each, where each class refers to a type of iris plant. One class is linearly separable from the other 2; 
the latter are NOT linearly separable from each other. 

### Attribute Information:

1. sepal length in cm
2. sepal width in cm
3. petal length in cm
4. petal width in cm
5. class:
-- Iris Setosa
-- Iris Versicolour
-- Iris Virginica


## K-means algorithm

The k-means algorithm is the simplest and most intuitive. It works as
follows.

1. Decide how many clusters we want. Call this `k`. (Because we have
   to choose `k`, the algorithm does not do this for us, this method
   is "semi-supervised" rather than wholly "unsupervised.")

2. Create `k` random cluster means (also called "centroids"). Our
   data come in four dimensions; thus, each cluster mean will be
   four-dimensional. We can choose random values for each dimension
   for each of the `k` clusters or we can choose a random data point
   to represent each initial cluster mean.

3. For each measured flower (each row in the table of data), use
   Euclidean distance (which works in any number of dimensions) to
   determine which cluster's mean is closest to the
   measurements. Assign this flower to that cluster. (Note it may
   have already been assigned to that cluster.)

4. Now that all flowers have been assigned (or reassigned) to
   clusters, recalculate the cluster means. This simply involves
   summing all data vectors in the cluster and dividing by the
   number of members in the cluster.

5. Go back to step 3 until no cluster assignments change.
