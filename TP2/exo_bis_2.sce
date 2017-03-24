clear;

// ref. exo5 newton
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

function y = f(x)
    y = (x - a) * (x - b)
endfunction

function y = df(x)
    y = 2 * x - a -  b
endfunction


// test
for i = (1:1),
    a = 10
    b = 20
    esp = 0.0000000001
    [X,n] = newton(a+1,esp,f,df)
    subplot(1,2*i,2*i-1)
    plot(X,(1:n))
    [Y,m] = newton(b+2,esp,f,df)
    subplot(1,2*i,2*i)
    plot(Y,(1:m))
end
    