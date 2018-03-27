function [X,Y] = BAM2(W, Y)
    Y0 = Y;
    X0 = BAMBackward(W, Y0);
    Y1 = BAMForward(W, X0);
    X1 = BAMBackward(W, Y1);
    converged = all(X0 == X1)  & all(Y0 == Y1);
    while ~converged
        Y0 = Y1;
        X0 = BAMBackward(W, Y0);
        Y1 = BAMForward(W, X0);
        X1 = BAMBackward(W, Y1);
        converged = all(X0 == X1)  & all(Y0 == Y1);
    end
    
    Y = Y1;
    X = X1;
end

