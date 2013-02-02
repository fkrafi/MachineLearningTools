function [theta, j_theta] = logisticRegression(X, y, alpha, iter)
    [m, n] = size(X);
    theta = zeros(n, 1);
    j_theta = zeros(iter, 1);
    for i=1:iter
        [j_theta(i), grad] = costFunction(theta, X, y);
        theta = theta - alpha*grad;
    end
end