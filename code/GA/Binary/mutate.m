function output = mutate(chromosome, nbits)
    output = chromosome;
    point = randi([1, nbits], 1);
    output(point) = 1 - output(point);
end

