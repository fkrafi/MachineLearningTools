clc;
clear;
data = load('train.txt');
x = data(:, 2:9);
X = [ones(size(data, 1), 1) x];
y = data(:,1);

alpha = 0.5;

iter=1000
[theta, j_theta] = logisticRegression(X, y, alpha, iter);
theta
