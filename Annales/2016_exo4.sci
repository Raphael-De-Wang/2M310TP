clear;

A  = [0,-1;1,0];
x0 = [1;0];
T  = 4 * %pi;
p  = 100;

// Q1.
function Xexp = EulerMatrix(A,x0,T,p)
    hp = T/p;
    Xexp = [;];
    Xexp(1,:) = x0;
    for k = (1:p),
        Xexp(k+1,:) = (Xexp(k,:)' + hp * ( A * Xexp(k,:)'))';
    end
endfunction


// Q2.

function X = SolutionExact(A,x0,T,p)
    t = linspace(0,T,p+1);
    X = [;];
    X(:,1) = cos(t)';
    X(:,2) = sin(t)';
endfunction

X = SolutionExact(A,x0,T,p);

// Q3.

function H = Energie(A,x0,T,p)
    t = linspace(0,T,p+1);
    H = cos(t) .^ 2 + sin(t) .^ 2;
endfunction

H = Energie(A,x0,T,p);

// Q4.

function x = f(xn,yn)
    x = xn - h * yn;
endfunction

function y = g(A,x0,T,p)
    y = yn + h * xn;
endfunction

// Q5. 
function He = EnergieEuler(A,x0,T,p)
    X  = EulerMatrix(A,x0,T,p);    
    He = X(:,1) .^ 2 + X(:,2) .^ 2;
    He = He';
endfunction

// Q6. 

Xexp = EulerMatrix(A,x0,T,p)

// Q7
function graph(A,x0,T,p)
    X  = SolutionExact(A,x0,T,p);
    Xe = EulerMatrix(A,x0,T,p);
    H  = Energie(A,x0,T,p);
    He = EnergieEuler(A,x0,T,p);
    t = linspace(0,T,p+1);
    subplot(121);
    plot(t,H,'green')
    plot(t,He,'blue')
    subplot(122);
    plot(X(:,1),X(:,2),'green')
    plot(Xe(:,1),Xe(:,2),'blue')
endfunction

p = 200
graph(A,x0,T,p)
