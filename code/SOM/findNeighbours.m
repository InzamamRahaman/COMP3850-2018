function ns = findNeighbours(x, W, theta)
    sizes = size(W);
    rels = zeros(1, sizes(1));
    for i=1:sizes(1)
        rels(i) = isNeighbour(x, W(i, :), theta);
    end
    [C, ns] = max(rels);
end

