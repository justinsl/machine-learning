% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

options = optimset('GradObj', 'on', 'MaxIter', 50);
initial_theta = zeros(m,1);


for n = 1:10
	% all_theta(n,:) = fmincg (@(t)(lrCostFunction(t, X, (y == n), lambda)), initial_theta, options)
	all_theta(n,:)


end