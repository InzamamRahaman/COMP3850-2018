function rel = testHopfield(W, X)
    [nrows, ncols] = size(X);
    relMat = zeros(1, nrows);
    for i=1:nrows
        x = X(i, :);
        y = compute(W, x);
        relMat(i) = all(x == y);
    end
    rel = all(relMat);
end

