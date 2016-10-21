function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
n = size(X, 2); % this already includes +1 of the first theta0 col

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

% fprintf(' size(X,2) = %.0f \n', size(X,2));
% checkif the mean h vector is initialised
% mu

mu(1) = 1;
mu(2) = mean(X(:, 2));
mu(3) = mean(X(:, 3));

sigma(1) = 0;
sigma(2) = std(X(:, 2));
sigma(3) = std(X(:, 3));

% checkif the mean and std are calculated properly
% mu
% sigma

% check X_norm
%X_norm(1:10,:) 

% loop through all the features and use vectorisation to divide by std and save to X_norm
for iter = 2:n
  X_norm(:, iter) = (X(:, iter) - mu(iter))./sigma(iter);

  % X_norm(:, iter) = X(:, iter)./sigma(iter);
end

% check X_norm
%X_norm(1:10,:) 


% ============================================================

end
