function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% Trying to be consistent with Andrew's lectures, where:
% hypothesis = theta' * X; % here X has the row wise arranged features
% hypothesis = X * theta; % here X has the column wise arranged features

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
hypothesis = X * theta;
errors = hypothesis - y;
squareErrors = errors.^2;
sumOfSquareErrors = sum(squareErrors);
J = 1/(2*m) * sumOfSquareErrors;

% =========================================================================

end
