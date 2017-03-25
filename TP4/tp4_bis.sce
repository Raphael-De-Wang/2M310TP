clear; 

// lokta Volteva
// x' = x(a - by) prop
// y' = y(c - dx) predateur 
// ou a,b,c,d > 0


function X = lvEulerExplicite(a,b,c,d,X0,T,p)
    // TODO : X0 validation
    hp = T/p;
    X = [;];
    X(1,:) = X0;
    t = linspace(0,T,p+1);
    for k = (1:p),
        X(k+1,1) = X(k,1) * ( 1 + a * hp - b * hp * X(k,2));
        X(k+1,2) = X(k,2) * ( 1 - c * hp + d * hp * X(k,1));
    end
endfunction


function plotSchemaEuler(a,b,c,d,x0,T,p,fun)
    t = linspace(0,T,p+1);
    // x1 = x0 * 2;
    // x2 = x1 * 2;
    // x3 = x2 * 2;
    X0 = fun(a,b,c,d,x0,T,p);
    // X1 = fun(a,b,c,d,x1,T,p);
    // X2 = fun(a,b,c,d,x2,T,p);
    // X3 = fun(a,b,c,d,x3,T,p);    
    plot(X0[:,1],X0[:,2],X1[:,1],X1[:,2],X2[:,1],X2[:,2],X3[:,1],X3[:,2])
    plot(X0(:,1),X0(:,2))
endfunction


a = 1;
b = 2;
c = 3;
d = 4;
X0= [6,6];
T = 10;
p = 10000;
X = lvEulerExplicite(a,b,c,d,X0,T,p);
plotSchemaEuler(a,b,c,d,X0,T,p,lvEulerExplicite)
