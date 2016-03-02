function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

regTheta = theta(2:length(theta))
 secondTerm = lambda / 2 / (m) * sum(regTheta .^ 2);
 firstTerm = sum((-y) .* log(sigmoid(X * theta)) - (ones(size(y)) - y) .* log(ones(size(y)) - sigmoid(X * theta)))  / m

 J = firstTerm + secondTerm

 % gradient
 temp = zeros(size(grad));
for i = 2:length(theta)

	temp(i) = sum((sigmoid(X * theta) - y) .* X(:,i)) / m + lambda / m * theta(i);

end
	temp(1) = sum((sigmoid(X * theta) - y) .* X(:,1)) / m;
grad = temp

% =============================================================

end
