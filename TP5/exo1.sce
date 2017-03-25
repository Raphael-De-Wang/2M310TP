clear;

A = [0,1;-4,0];

// Q1. 
function X = osciHarmEulExpl(A,X0,T,p)
    hp = T/p;
    X = [;];
    X(1,:) = X0;
    for k = (1:p),
        X(k+1,:) = X(k,:) + (hp * A * X(k,:)')' ;
    end
endfunction

function test 
    X0 = [0,1];
    T  = 10;
    Xp50 = osciHarmEulExpl(A,X0,T,50);
    Xp100 = osciHarmEulExpl(A,X0,T,100);
    Xp300 = osciHarmEulExpl(A,X0,T,300);
    Xp1000 = osciHarmEulExpl(A,X0,T,1000);
    plot(linspace(0,T,50+1),Xp50(:,1),linspace(0,T,100+1),Xp100(:,1),linspace(0,T,300+1),Xp300(:,1),linspace(0,T,1000+1),Xp1000(:,1));
endfunction

// test

// Q2.

function X = osciHarm(A,X0,T,p)
    hp = T/p;
    X = [;];
    X(1,:) = X0;
    t = linspace(0,T,p+1);
    for k = (1:p),
        X(k+1,:) = [sin(2*t(k))/2,cos(2*t(k))]
    end
endfunction

function graphCmp(A,X0,T,p)
    t = linspace(0,T,p+1);
    X = osciHarm(A,X0,T,p);
    XAppr = osciHarmEulExpl(A,X0,T,p);
    plot(t,X(:,1),'b',t,XAppr(:,1),'g')
endfunction

X0 = [0;1];
T  = 10;
// graphCmp(A,X0,T,10000)

// Q3.

function xdot = chp_vect(t,x)
    xdot(1) = x(2);
    xdot(2) = -4 * x(1);
endfunction


function graphCmpOde(A,X0,T,p)
    t = linspace(0,T,p+1);
    X = osciHarm(A,X0,T,p);
    Xo= ode(X0,0,t,chp_vect);
    XAppr = osciHarmEulExpl(A,X0,T,p);
    plot(t,X(:,1),'b',t,XAppr(:,1),'g',t,Xo(1,:),'r')
endfunction

// Q4.
// p = 300;
// graphCmpOde(A,X0,T,p)

// Q5.
T = 50;
function graphCmp2(A,X0,T,p)
    t  = linspace(0,T,p+1)
    t2 = linspace(0,T,p*2+1)
    t4 = linspace(0,T,p*4+1)
    
    subplot(121);
    X = osciHarm(A,X0,T,p);
    X2 = osciHarm(A,X0,T,p*2);
    X4 = osciHarm(A,X0,T,p*4);
    plot(t,X(:,1),"b")
    plot(t2,X2(:,1),"g")
    plot(t4,X4(:,1),"r")
    
    subplot(122);
    Xo = ode(X0,0,t,chp_vect);
    Xo2= ode(X0,0,t2,chp_vect);
    Xo4= ode(X0,0,t4,chp_vect);
    plot(t,Xo(1,:),"b")
    plot(t2,Xo2(1,:),"g")
    plot(t4,Xo4(1,:),"r")
    
endfunction

// graphCmp(A,X0,T,p=10000)
// graphCmp2(A,X0,T,p=100)

// Q6. - xpause ? 

function X = osciHarmEulExpl2(A,X0,t0,t1,p)
    hp = (t1-t0)/p;
    X = [;];
    X(1,:) = X0;
    for k = (1:p),
        X(k+1,:) = X(k,:) + (hp * A * X(k,:)')' ;
    end
endfunction

function graphDisc(A,X0,T,p,step)
    Tx = [0:step:T]
    if Tx($) <> T then,
        Tx($+1) = T;
    end
    X = osciHarm(A,X0,T,p);
    t = linspace(0,T,p+1);    
    plot(t,X(:,1),'r');
    for i = (1 : length(Tx)-1),
        X = osciHarmEulExpl2(A,X0,Tx(i),Tx(i+1),p);
        t = linspace(Tx(i),Tx(i+1),p+1);
        plot(t,X(:,1),'b');
	xpause(100000);
	X0 = X($,:);
    end
endfunction

graphDisc(A,X0,T=40,p=10000,step=0.5)
