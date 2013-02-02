function x = zscore(x)
    x = (x-mean(x))/standardDeviation(x);
end