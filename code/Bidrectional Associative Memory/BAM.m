function Y = BAM(W, X)
    X0 = X;
    Y0 = BAMForward(W, X0);
    X1 = BAMBackward(W, Y0);
    Y1 = BAMForward(W, X1);
    converged = all(X0 == X1)  & all(Y0 == Y1);
    while ~converged
        X0 = X1;
        Y0 = BAMForward(W, X0);
        X1 = BAMBackward(W, Y0);
        Y0 = BAMForward(W, X1);
        converged = all(X0 == X1)  & all(Y0 == Y1);
    end
    
    Y = Y1;
    
end

