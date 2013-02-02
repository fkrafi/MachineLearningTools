function J = computeCost(X, y, theta)
    m = length(y);
    J = 1.0/m*(-y'*log(1.0./(1.0+exp(-X*theta)))-(1-y)'*log(1.0-1.0./(1.0+exp(-X*theta))));
end