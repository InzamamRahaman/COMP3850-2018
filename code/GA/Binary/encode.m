function gene = encode(pn, lo, hi, nbits)
    gene = zeros(1, nbits);
    acc = zeros(1, nbits);
    pnormal = (pn - lo) / (hi - lo);
    for i = 1:nbits
        if i > 1
            gene(i) = round(pnormal - 2^-i - acc(i - 1));
            acc(i) = acc(i - 1) + gene(i) * 2^-i;
        else
            gene(i) = round(pnormal - 2^-i);
            acc(i) = gene(i) * 2^-i;
        end
    end
    
    
    
end

