function [J, grad] = costFunction(theta, X, y)
    m = length(y);
    htheta = sigmoid(X * theta);
    J = 1/m*sum(-y'*log(htheta)-(1-y)'*(log(1-htheta)));
    grad = 1/m*X'*(htheta-y);
end