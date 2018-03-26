function y = compute(W, x)
    y = W * x';
    y = mysign(y)';
end

