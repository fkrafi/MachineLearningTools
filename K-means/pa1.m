data = xlsread('combined.xlsx');
K = 5;
[cluster, mu] = kmeans(data, K);


colorPlot = ['yo'; 'mo'; 'co'; 'ro'; 'go'; 'bo'];
clf('reset');
hold all;
for n=1:size(data, 1)
    plot(cluster(n, 1), cluster(n, 2), colorPlot(cluster(n, 3),:));
end
for k=1:K
    plot(mu(k,1), mu(k,2), 'wo');
    plot(mu(k,1), mu(k,2), 'w+');
end
set(gca, 'color', [0 0 0])