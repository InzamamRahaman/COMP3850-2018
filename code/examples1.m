a = [1,2,3]; % creates a row vector, i.e. 1 x n matrix
b = [1;2;3]; % creates a column vector, i.e. n x 1 matrix

btrans = b'; % tranposes b, i.e. flips the rows and columns

c = [4;5;6]; % "vector" usually refers to column vector

innerProd = b' * c; % inner product, i.e. dot product of b and c 
outerProd = b * c'; % outer product
% hint to remember them: 
% inner product: transpose inside of expression
% outer product: transpose outside of expression

% lets create the matrix [1  2]
%                        [3  4]
mat1 = [1, 2; 3, 4];

vec = [1,2];

% results in             [2  4]
%                        [4  6]
% This broadcasts row-wise
mat2 = vec + mat1;  

% results in             [2  3]
%                        [5  6]
% This broadcasts column-wise
mat3 = vec' + mat1; 

mat4 = [4, 5;,6, 7];

% matrix addition
mat1 + mat4

% matrix multiplication 
mat1 * mat4

% element-wise multiplication
mat1 .* mat4

% element-wise division
mat1 ./ mat4

% Compute inverse of matrix
inv(mat4)

% Get I2 (Identity matrix of size 2)
eye(2)

% 2 x 2 matrix with all ones
ones(2, 2)

% 2 x 2 matrix with all zeros
zeroes(2, 2)

% examples of MATLAB functions
log(10);
sin(8);
cos(8)
tan(8);


% ranges
x = 1:10; % integers 1 to 10 inclusive
x = 1:2:10 % integers 1 to 10 in steps of 2
% numbers from 0-10 with (1000 - 1) gaps in between
x = linspace(0, 10, 1000); 

plot(x, sin(x), '-r'); % plot of sin function over range of x 

name = input('Enter name:') % get input
age = input('Your age:') % get another input
age = str2num(age) % convert string to number
% format string
message = sprintf('Your name is %s and you are %0.0f years old', name, age)

hello = 'Hello';
world ' World';
strcat(hello, world) % string concatenation

z = logb(3, 3); % call to custom function
% custom function 
% in .m files, function definitions must come last
function x = logb(n, b)
    numer = log(n);
    denom = log(b);
    x = numer / denom;
end






