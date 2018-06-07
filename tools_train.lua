function train(p)
  print(p.trainset_size)
  for i=1,p.trainset_size do
	local input = torch.randn(2)
	local output = torch.Tensor(1)
	if input[1]*input[2]>0 then
	  output[1]=-1
	else
	  output[1]=1
	end

	p.criterion:forward(p.net:forward(input), output)
	net:zeroGradParameters()
	net:backward(input, p.criterion:backward(net.output, output))
	net:updateParameters(p.learning_rate)
  end
end
