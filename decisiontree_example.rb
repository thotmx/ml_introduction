require 'decisiontree'

attributes = ['Temperature']
training = [
  [36.6, 'healthy'],
  [37, 'sick'],
  [38, 'sick'],
  [36.7, 'healthy'],
  [40, 'sick'],
  [50, 'very sick']
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train

test = [37, 'sick']

decision = dec_tree.predict(test)
puts "Predicted: #{decision} ... True decision: #{test.last}"

