function population = randomGen(nbits, npop)
    population = rand(nbits, npop);
    population = double(population > 0.5);
end

