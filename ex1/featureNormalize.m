function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2)); % 2 stands for number of columns in matrix X
sigma = zeros(1, size(X, 2));
m = length(X);
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu = mean(X_norm);
sigma = std(X_norm);
X_norm = (X_norm - mu)./sigma;

% Something is wrong with the code bellow:
%S = sum(X, 1); % sums the features from matrix X_norm by columns
%mu = S/m; % putting the average values of features in mu
%sigma = max(X, [], 1) - min(X, [], 1); % max - min feature in X column wise
%X_norm = (X - mu)./sigma % subtracting row wise mu from X_norm

% Alternative ways:
% 1)
%mu = mean(X);
%X_norm = X - repmat(mu,size(X,1),1);
%sigma = std(X_norm);
%X_norm = X_norm ./ repmat(sigma,size(X,1),1);
% 2)
%mu = mean(X);
%X_norm = bsxfun(@minus, X, mu);
%sigma = std(X_norm);
%X_norm = bsxfun(@rdivide, X_norm, sigma);

% ============================================================

end
