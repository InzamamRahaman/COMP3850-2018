function ys = Softmax(xs)
    numer = exp(xs);
    denom = sum(numer);
    ys = numer / denom;
end

