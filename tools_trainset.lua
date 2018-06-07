
function setup_trainset(p) 
  dataset = {}
  function dataset:size() return p.trainset_size end
  for i=1,dataset:size() do
	local input = torch.randn(2)
	local output =  torch.Tensor(1)
	if input[1] * input[2]>0 then
	  output[1] = -1
	else
	  output[1] = 1
	end
	dataset[i] = {input ,output}
  end
  p.dataset = dataset
end
