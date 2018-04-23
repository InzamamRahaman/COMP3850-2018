
nbits = 5;
npop = 8;

lo = 0;
hi = 10;

numGenerations = 100;
survivorRate = 0.5;
tournamentRate = 0.5;
mutationRate = 0.01;


population = randomGen(npop, nbits);

disp(population);

for gen=1:numGenerations
    fitnesses = computeFitnesses(population, npop);
    [newPopulation, already, left] = getSurvivors(population, fitnesses, nbits, npop, survivorRate);
    for i=1:left
        j = already + i;
        [c1, c2] = tournament(population, fitnesses, npop, nbits, tournamentRate);
        r = rand();
        c = c1;
        if r > 0.5
            c = c2;
        end
        
        m = rand();
        if m <= mutationRate
            c = mutate(c, nbits);
        end
        newPopulation(j, :) = c;
    end
    population = newPopulation;
end


disp((population));






