function [newPopulation, num, numLeft] = getSurvivors(population, fitnesses, nbits, npop, rate)
    num = round(npop * rate);
    numLeft = npop - num;
    newPopulation = zeros(npop, nbits);
    [c, indicies] = sort(fitnesses);
    for i = 1:num
        j = indicies(i);
        newPopulation(i) = population(j, 1:nbits);
    end
end

