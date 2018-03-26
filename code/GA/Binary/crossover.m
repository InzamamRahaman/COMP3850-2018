function [child1, child2] = crossover(parent1, parent2, nbits)
    child1 = zeros(1, nbits);
    child2 = zeros(1, nbits);
    crossoverPoint = randi([1, nbits - 1], 1);
    
    child1(1:crossoverPoint) = parent1(1:crossoverPoint);
    child2(1:crossoverPoint) = parent2(1:crossoverPoint);
    
    child1(crossoverPoint+1:end) = parent1(crossoverPoint+1:end);
    child2(crossoverPoint+1:end) = parent2(crossoverPoint+1:end); 
end

