function W = DeltaSGD(N, W, X, Y, alpha)
  for k = 1:N
    x = X(k, :)';
    d = Y(k);

    v = W*x;
    y = Sigmoid(v);
    
    e     = d - y;  
    delta = y*(1-y)*e;
  
    dW = alpha*delta*x;     % delta rule    
    
    W(1) = W(1) + dW(1); 
    W(2) = W(2) + dW(2);
    W(3) = W(3) + dW(3);    
  end
end

