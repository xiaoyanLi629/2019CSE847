# This is homework 5

## Problem 1:
'''
  Two k-means method used. 
'''
  The first one is the common iteration method. Calculating centroids and assign clusters and calculate centroids again.
  
  The second one is spectral relaxation method. In derivative equation procedure, 
  the property product of assignment matrix is identity is used. But this property is not gurantted the calculated assignment
  matrix is correct because it is not hot spot matrix and the dimension is nxn. So to convert this matrix to a hot spot matrix
  with each row is an assignment, need to calculate the number of assignment of each column, because each column means one cluster.
  Then order these cluster one by one and choose the first required k cluster. Then assign samples to these clusters again to get
  the final asignmen result.
