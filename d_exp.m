function y = d_exp()
	u = rand;
	if u > 0.5
		y = -log(2 - 2*u);
	else
		y = log(2*u);
end