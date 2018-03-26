function W = hopfieldWeights(memories)
    [nrows, ncols] = size(memories);
    W = memories' * memories;
    correction = nrows * eye(ncols);
    W = W - correction;
end

