clear

// Q1 
function y = f1(x)
    y = x.^2;
endfunction

// Q2
function X = x(t)
    X = [cos(t);sin(t)];
endfunction

// Q3
function Ax = rot(theta,x)
    function r = A(theta)
        r = [cos(theta),-sin(theta);sin(theta),cos(theta)];
    endfunction
    Ax = A(theta) * x
endfunction

x = [1;2];
tht = %pi / 4;
Ax = rot(tht,x)

// Q4
t = linspace(1,100);
// plot(t,f1(t))

// Q5
function s = vsum(v)
    s = 0
    for i = (1:size(v,"*")),
        s = s + v(i);
    end
endfunction

v = (1:10);
vsum(v)
