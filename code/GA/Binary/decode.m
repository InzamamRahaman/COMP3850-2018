function qn = decode(chromosome, lo, hi)
    factor = 2 .^ -(1:length(chromosome));
    disp(size(factor));
    disp(size(chromosome));
    factor1 = chromosome .* factor;
    quant = sum(factor1) + 2 .^ -(length(chromosome) + 1);
    qn = quant * (hi - lo) + lo;
end

