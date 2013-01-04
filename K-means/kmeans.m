function [cluster, mu] = kmeans(data, K)
    X = data(:, 1);
    Y = data(:, 2);
    m = size(data, 1);
    c = ones(m, 1);
    randidx = randperm(m);
    mu(:,1) = X(randidx(1:K));
    mu(:,2) = Y(randidx(1:K));
    prevMu = mu;
    StopCriterionNotMet = true;
    while StopCriterionNotMet
        for n=1:m
            T = (X(n)-mu(:,1)).^2 + (Y(n)-mu(:,2)).^2;
            c(n) = find(T==min(T));
        end
        for k=1:K
            mu(k,1) = mean(X(c==k));
            mu(k,2) = mean(Y(c==k));
        end
        if abs(max(max(prevMu-mu)))<0.005
            StopCriterionNotMet = false;
        end
        prevMu = mu;
    end
    cluster(:,1:2) = data;
    cluster(:,3) = c;
end