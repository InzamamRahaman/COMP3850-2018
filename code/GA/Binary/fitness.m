function [y, x] = fitness(chromosome)
    x = bin2dec(num2str(fliplr(chromosome)));
    y = -1 * (-2 * x * x + 4 * x);
end

