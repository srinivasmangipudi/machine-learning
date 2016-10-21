function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    % predictions = X * theta;
    % delta_1 = sum((predictions-y).*X(:,1))/m;
    % theta_1 = theta(1) - (alpha * delta_1);

    % delta_2 = sum((predictions-y).*X(:,2))/m;
    % theta_2 = theta(2) - (alpha * delta_2);

    % delta_3 = sum((predictions-y).*X(:,3))/m;
    % theta_3 = theta(3) - (alpha * delta_3);




    theta = theta - (alpha/m)*X'*(X*theta - y);



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

    % simultaneously update all thetas
    % theta(1) = theta_1;
    % theta(2) = theta_2;
    % theta(3) = theta_3;

    % fprintf('Cost function (iter, theta): ');
    % fprintf('%i %f \n', iter, J_history(iter));

end

end
