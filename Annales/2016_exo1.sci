clear;

// Q1.
A = [1 3 6 3;
     7 3 0 10;
     1 1 0 2];

     
// Q2.
function U = Un(u1,n)
    U = [u1];
    for i = (2:n),
        U(i) = 3 + 2 * U(i-1);
    end
endfunction

U = Un(1,20)


// Q3.
B = [ zeros(5,1), -1 * ones(5,1), 2 * ones(5,1), zeros(5,1), 3 * ones(5,1) ];


// Q4.
B(1,:) = ones(1,5)*4;
B(:,3) = B(:,3) * 3;


// Q5.
mask = zeros(5,5);
mask(2:3,2:3) = 1;
C = mask .* B;


// Q6.
function M = bonus(n)
    v = ones(1,2*n-1);
    u = (1:0.5:n);
    u(2:2:2*n-1) = 0;
    M = v' * u;
endfunction

M = bonus(15)
