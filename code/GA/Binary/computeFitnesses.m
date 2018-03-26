function fitnesses = computeFitnesses(population, npop)
    fitnesses = zeros(1, npop);
    for i=1:npop
        fitnesses(i) = fitness(population(i,:));
    end
end

