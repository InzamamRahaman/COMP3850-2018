function [child1, child2] = tournament(population, fitnesses, npop, nbits, rate)
    num = round(npop * rate);
    indicies = 1:npop;
    randomIs = datasample(indicies, num, 'Replace', false);
    toSelect = zeros(1, num);
    toSelectI = zeros(1, num);
    for i = 1:num
        toSelectI(i) = randomIs(i);
        toSelect(i) = fitnesses(i);
    end
    [C, I] = sort(toSelect);
    parent1 = population(toSelectI(I(1)), :);
    parent2 = population(toSelectI(I(2)), :);
    [child1, child2] = crossover(parent1, parent2, nbits);
    
end

