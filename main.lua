require 'nn'
require 'tools_network' -- define network and lossfunction
require 'tools_train' -- define trainset and train
require 'tools_test' --define testdset and test
local cmd = torch.CmdLine()
cmd:option('-learning_rate', 0.01)
cmd:option('-trainset_size', 2500)
function main(p)
  setup_network(p)
  train(p)
  test(p)

end
local p = cmd:parse(arg)
main(p)
