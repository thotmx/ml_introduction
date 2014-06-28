require 'classifier'

b = Classifier::Bayes.new 'Interesting', 'Uninteresting'

b.train_interesting "Here are some good words. I hope you love them"
b.train_uninteresting "Here are some bad words, I hate you"

puts b.classify "I hate bad words and you"
