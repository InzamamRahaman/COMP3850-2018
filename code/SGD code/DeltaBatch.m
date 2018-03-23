function W = DeltaBatch(N, W, X, Y, alpha)
  dWsum = zeros(3, 1); 
  for k = 1:N
    x = X(k, :)';
    d = Y(k);
                        
    v = W*x;
    y = Sigmoid(v);
    
    e     = d - y;    
    delta = y*(1-y)*e;
    
    dW = alpha*delta*x;
    
    dWsum = dWsum + dW;
  end
  dWavg = dWsum / N;
  
  W(1) = W(1) + dWavg(1);
  W(2) = W(2) + dWavg(2);
  W(3) = W(3) + dWavg(3);
end