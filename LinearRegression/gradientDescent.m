function [theta, j_theta] = gradientDescent(X, y, alpha, iter)
% Y = theta(1) + theta(2)*X;
    m = length(y);
    theta = [0 0]';
    j_theta = zeros(iter, 1);
    for i=1:iter
        theta(1) = theta(1) - alpha/m*sum(X*theta-y);
        theta(2) = theta(2) - alpha/m*((X*theta-y)'*X(:, 2));
        j_theta(i) = computeCost(X, y, theta);
    end
end