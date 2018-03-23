clear all

X = [ 0 0 1;
      0 1 1;
      1 0 1;
      1 1 1;
    ];

Y = [ 0
      0
      1
      1
    ];
      
W = 2*rand(1, 3) - 1;
N = 4;
alpha = 0.9;
for epoch = 1:40000 
  W = DeltaBatch(N, W, X, Y, alpha); 
end


for k = 1:N
  x = X(k, :)';
  v = W*x;
  y = Sigmoid(v);
  disp(Y(k));
  disp(y);
end