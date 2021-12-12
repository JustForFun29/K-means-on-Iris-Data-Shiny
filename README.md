## K-means algorithm

The k-means algorithm is the simplest and most intuitive. It works as
follows.

1. Decide how many clusters we want. Call this $k$. (Because we have
   to choose $k$, the algorithm does not do this for us, this method
   is "semi-supervised" rather than wholly "unsupervised.")

2. Create $k$ random cluster means (also called "centroids"). Our
   data come in four dimensions; thus, each cluster mean will be
   four-dimensional. We can choose random values for each dimension
   for each of the $k$ clusters or we can choose a random data point
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
