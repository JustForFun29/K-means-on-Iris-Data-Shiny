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



Program works as follows:

1. Read the data from the file. Use only the floating point values for the clustering. Don’t discard the class information. We will need it later for assigning names to the clusters and for checking the accuracy of the clusters.
2. Apply the k-means algorithm to find clusters. (There are 3 natural clusters in the case of the iris data.) (See below for more information on k-means.) Use Euclidean distance as your distance measure.
3. Assign each final cluster a name by choosing the most frequently occurring class label of the examples in the cluster.
4. Find the number of data points that were put in clusters in which they didn’t belong (based on having a different class label than the cluster name).

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
