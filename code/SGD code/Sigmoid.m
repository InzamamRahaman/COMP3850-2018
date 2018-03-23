function y = Sigmoid(x)
    y = (1 + exp(-x)) .^ -1;
end

