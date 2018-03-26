function res = isNeighbour(x, y, theta)
    distance = sqrt(sum((x - y) .^ 2));
    res = distance <= theta;
end

