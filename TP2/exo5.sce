clear;

function [X,n] = newton(x0,esp,f,df)
    maxIter = 100
    X = [x0]
    x = x0
    n = 1
    while (abs(f(x)) >= esp) & (n < maxIter),
        x = x - f(x)/df(x)
	X(n+1) = x
	n = n + 1
    end
endfunction

// define espilon
//esp = 0.01
//esp = 0.0001
esp = 0.00000001

// ==== testcase 1 ====
function a = f1(x)
    a = x.^2;
endfunction

function a = df1(x)
    a = 2*x;
endfunction

x1 = 5
[X1,n1] = newton(x1,esp,f1,df1)

// ==== testcase 1 ====

function a = f2(x)
    a = (x-5).^3
endfunction

function b = df2(x)
    b = 3*((x-5).^2)
endfunction

x2 = 9
[X2,n2] = newton(x2,esp,f2,df2)