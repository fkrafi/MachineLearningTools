clc;
clear;
data = load('data.txt');

x = zscore(data(:,1));
X = [ones(size(data, 1), 1), x];
y = zscore(data(:,2));
plot(x, y, 'r+', 'MarkerSize', 10);
hold on;
alpha = 0.5;

iter=5000

[theta, j_theta] = gradientDescent(X, y, alpha, iter);

fprintf('Theta found by gradient descent: %.25f %.12f \n', theta(1), theta(2));
plot(X(:,2), X*theta, 'go-');