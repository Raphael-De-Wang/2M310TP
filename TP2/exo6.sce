clear;

// page 19

function b = y(x0,v0,w0,t)
    b = v0*cos(w0*t) - w0*x0*sin(w0*t)
endfunction

function a = x(x0,v0,w0,t)
    A = x0;
    B = v0/w0;
    a = A*cos(w0*t) + B*sin(w0*t)
endfunction

function drawX(x0,v0,w0)
    t  = linspace(1,10)
    y  = x(x0,v0,w0,t)
    plot(y,t)
endfunction

function drawXY(x0,v0,w0)
    t  = linspace(1,10)
    X  = x(x0,v0,w0,t)
    Y  = y(x0,v0,w0,t)
    plot(Y,X)
endfunction

w0 = 1
x0 = 2
v0 = 3

// test drawX
// drawX(x0,v0,w0)

// test drawXY
// drawXY(x0,v0,w0)

// test randomly
m = 5; n = 4
for p = (1:m*n),
    w0 = int(diag(rand() * 100 ) + 1);
    x0 = int(diag(rand() * 100 ) + 1);
    v0 = int(diag(rand() * 100 ) + 1);
    subplot(m,n,p);
    drawXY(x0,v0,w0)
    title("x0="+string(x0)+", v0="+string(v0)+", w0="+string(w0))
end