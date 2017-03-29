exec 2016_exo2.sci

// Q1.
function Xheun = Heun(a,x0,T,p)
    // x(n+1) = x(n) + (h/2)*(2*a + h*a^2)*x(n)
    hp = T/p;
    Xheun = [x0];
    for k = (2:p+1),
        Xheun(k) = Xheun(k-1) + (hp/2) * (2*a + hp * a .^ 2) * Xheun(k-1);
    end
endfunction

// Q2.
Xheun50 = Heun(a,x0,T,p=50);
Xheun200 = Heun(a,x0,T,p=200);

function graphCmp(a,x0,T,p)
    plot(1:p+1,Heun(a,x0,T,p),'blue');
    plot(1:p+1,SolutionExacte(a,x0,T,p),'red');
    plot(1:p+1,EulerImplicite(a,x0,T,p),'green')
    plot(1:p+1,EulerExplicite(a,x0,T,p),'black')
endfunction

p = 50;
graphCmp(a,x0,T,p)

// Q3.
p = 50;
thetaHeun50  = ErreurGlobale(a,x0,p,T,Xheun50,SolutionExacte)
p = 200;
thetaHeun200 = ErreurGlobale(a,x0,p,T,Xheun200,SolutionExacte)

