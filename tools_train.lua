require 'nn'
function train(p)
  trainer = nn.StochasticGradient(p.net, p.criterion)
  trainer.learningRate = p.learning_rate
  print(trainer)
  trainer:train(p.dataset)
end
