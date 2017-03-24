clear;

A = [0,1;-4,0];

// Q1. 
function X = osciHarmEulExpl(A,X0,T,p)
    hp = T/p;
    X = [;];
    X(1,:) = X0;
    t = linspace(0,T,p+1);
    for k = (1:p),
        X(k+1,:) = X(k,:) + (hp * A * X(k,:)')' ;
    end
endfunction

X0 = [0,1];
T  = 10;
p  = 20000;
X = osciHarmEulExpl(A,X0,T,p);
// plot(t = linspace(0,T,p+1),X(:,1))
plot(X(:,1),X(:,2))
