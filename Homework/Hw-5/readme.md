# This is homework 5

## Problem 1:
```
  Two k-means method used. 
```
  The first one is the common iteration method. Calculating centroids and assign clusters and calculate centroids again.
  
  The second one is spectral relaxation method. In derivative equation procedure, 
  the property product of assignment matrix is identity is used. But this property is not gurantted the calculated assignment
  matrix is correct because it is not hot spot matrix and the dimension is nxn. So to convert this matrix to a hot spot matrix
  with each row is an assignment, need to calculate the number of assignment of each column, because each column means one cluster.
  Then order these cluster one by one and choose the first required k cluster. Then assign samples to these clusters again to get
  the final asignmen result.

Image 1 for 10 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_10_1.jpg | width = 100 "Image 1 with 10 components"

Image 2 for 10 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_10_2.jpg "Image 2 with 10 components"

Image 1 for 50 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_50_1.jpg "Image 1 with 50 components"

Image 2 for 50 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_50_2.jpg "Image 2 with 50 components"

Image 1 for 100 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_100_1.jpg "Image 1 with 100 components"

Image 2 for 100 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_100_2.jpg "Image 2 with 100 components"

Image 1 for 200 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_200_1.jpg "Image 1 with 200 components"

Image 2 for 200 components: 
![alt text][logo]

[logo]: https://raw.githubusercontent.com/xiaoyanLi629/2019CSE847/master/Homework/Hw-5/image_200_2.jpg "Image 2 with 200 components"
