clear;

// Q1.
function Xexp = EulerExplicite(a,x0,T,p)
    hp = T/p;
    Xexp = [x0];
    for k = (1:p),
        Xexp(k+1) = Xexp(k) * (a * hp + 1);
    end
endfunction


// Q2. 
function Ximp = EulerImplicite(a,x0,T,p)
    hp = T/p;
    Ximp = [x0];
    for k = (2:p+1),
        Ximp(k) = Ximp(k-1) / (1 - a * hp);
    end
endfunction

// Q3. 

a  = -1;
x0 = 2; 
T  = 5;

function X = SolutionExacte(a,x0,T,p)
    t = linspace(0,T,p+1);
    X = exp(a*t)*x0;
    X = X';
endfunction

// Q4. 
p  = 50;
Xexp50 = EulerExplicite(a,x0,T,p);
Ximp50 = EulerImplicite(a,x0,T,p);

p  = 200;
Xexp200 = EulerExplicite(a,x0,T,p);
Ximp200 = EulerImplicite(a,x0,T,p);


// Q5.
function graphCmp(a,x0,T)
    subplot(121);
    p = 50;
    plot(linspace(0,T,p+1),EulerExplicite(a,x0,T,p),'b');
    plot(linspace(0,T,p+1),EulerImplicite(a,x0,T,p),'g');
    plot(linspace(0,T,p+1),SolutionExacte(a,x0,T,p),'r');
    subplot(122);
    p = 200;
    plot(linspace(0,T,p+1),EulerExplicite(a,x0,T,p),'b');
    plot(linspace(0,T,p+1),EulerImplicite(a,x0,T,p),'g');
    plot(linspace(0,T,p+1),SolutionExacte(a,x0,T,p),'r');
endfunction

// graphCmp(a,x0,T)

// Q6.
function theta = ErreurGlobale(a,x0,p,T,X,f)
   x = f(a,x0,T,p);
   size(X)
   theta = max(abs(X-x));
endfunction

// Q7.
p = 50;
thetaExp50 = ErreurGlobale(a,x0,p,T,Xexp50,SolutionExacte)
thetaImp50 = ErreurGlobale(a,x0,p,T,Ximp50,SolutionExacte)

p = 200;
thetaExp200 = ErreurGlobale(a,x0,p,T,Xexp200,SolutionExacte)
thetaImp200 = ErreurGlobale(a,x0,p,T,Ximp200,SolutionExacte)
