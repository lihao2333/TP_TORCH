require 'nn'
function setup_network(p)
  local INPUT = 2
  local OUTPUT = 1
  local HU = 10
  net = nn.Sequential( )
  net:add(nn.Linear(INPUT, HU))
  net:add(nn.Tanh())
  net:add(nn.Linear(HU, OUTPUT))
  p.net = net
  p.criterion = nn.MSECriterion()
end
