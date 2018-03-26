function W = trainSOM(X, n, alpha, epochs, theta)
    [nrows, ncols] = size(X);
    W = rand([n, ncols]) + 5;
    disp(W);
    for e=1:epochs
        for i=1:nrows
            x = X(i, :);
            ns = findNeighbours(x, W, theta);
            for n=ns
                delta = alpha * x .* W(n, :);
                W(n, :) = W(n, :) + delta;
            end
        end
    end
end

