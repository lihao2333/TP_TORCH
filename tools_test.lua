function test(p)
  x = torch.Tensor(2)
  x[1] = 0.5; x[2] = 0.5;print(p.net:forward(x))
  x[1] = 0.5; x[2] = -0.5;print(p.net:forward(x))
  x[1] =-0.5; x[2] = 0.5;print(p.net:forward(x))
  x[1] =-0.5; x[2] =-0.5;print(p.net:forward(x))
end
