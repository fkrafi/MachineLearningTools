function sd = standardDeviation(x)
    sd = sqrt(sum((x-mean(x)).^2));
end