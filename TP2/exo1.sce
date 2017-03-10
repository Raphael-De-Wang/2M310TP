clear

// Q1.1
tht = %pi/6;

// Q1.2 

function r = A(theta)
   r = [cos(theta),-sin(theta);sin(theta),cos(theta)];
endfunction

x = [1;2];

// Q1.3
y = A(tht) * x;

// =====    =====    =====    =====    =====

a = A(tht)

// Q2.1
a(1,:)

// Q2.2
a(:,2)

// =====    =====    =====    =====    =====

// Q3.1

function cube = B(n1,n2,m1,m2)
    b11 = zeros(m1,n1);
    b12 = zeros(m1,n2);
    b21 = zeros(m2,n1);
    b22 = zeros(m2,n2);
    cube = [ b11, b12; b21, b22 ];
endfunction

// =====     =====     =====     =====     =====
m = 5
n = 6
zeros(m,n)
eye(m,n)
diag(eye(m,n))
diag(eye(m,n),1)
v1 = [1;2;3]
v2 = [4;5;6]
v1 .* v2
v1 ./ v2

A1 = A(%pi/4)
A2 = A(%pi/6)

// produit scalaire ? 
A1 .* A2

// division ?
A1 ./ A2