function y = retrieve(W, x)
    n = length(x);
    y = compute(W, x);
    converged = all(x == y);
    while ~converged
        x = compute(W, y);
        y = compute(W, x);
        converged = all(x == y);
        neuron = randi([1,n]);
        delta = mysign(W * y');
        delta = delta[0];
        y(neuron) = delta;
    end
end

