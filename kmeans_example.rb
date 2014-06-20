require 'k_means'

data = [[1,1], [1,2], [1,1], [1000, 1000], [500,500]]
kmeans = KMeans.new(data, centroids: 2)
puts kmeans.inspect
