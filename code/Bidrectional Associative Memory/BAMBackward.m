function X = BAMBackward(W, Y)
    X = W * Y';
    X = mysign(X);
    X = reshape(X, [1, length(X)]);
end

