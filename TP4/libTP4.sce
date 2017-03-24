function X = EulerExplicite(a,b,x0,T,p)
    // X(k+1) = (1 + hp * a(t(k,p)))X(k) + hp*b(t(k,p)).
    hp = T/p;
    X = [x0];
    t = linspace(0,T,p+1);
    for k = (1:p),
        X(k+1) = (1 + hp * a(t(k))) * X(k) + hp * b(t(k));
    end
    X = X';
endfunction


function X = EulerImplicite(a,b,x0,T,p)
    // (1 − hp*a(t(k,p)))X(k) = X(k−1) + hp*b(t(k,p)).
    hp = T/p;
    X = [x0];
    t = linspace(0,T,p+1);
    for k = (2:p+1),
        X(k) = (X(k-1) + hp*b(t(k))) / (1 - hp * a(t(k)));
    end
    X = X';
endfunction


function plotSchemaEuler(a,b,x0,T,p,fun)
    t = linspace(0,T,p+1);
    x1 = x0 * 2;
    x2 = x1 * 2;
    x3 = x2 * 2;
    plot(t,fun(a,b,x0,T,p),t,fun(a,b,x1,T,p),t,fun(a,b,x2,T,p),t,fun(a,b,x3,T,p))
endfunction


function graphSchemaEulerComp(a,b,x0,T,p,f1,f2)
    subplot(121);
    plotSchemaEuler(a,b,x0,T,p,f1);
    subplot(122);
    plotSchemaEuler(a,b,x0,T,p,f2);
endfunction


function graphCmp(a,b,x0,T,p,f1,f2,f3)
    t = linspace(0,T,p+1);
    plot(t,f1(a,b,x0,T,p),'ro',t,f2(a,b,x0,T,p),'g*',t,f3(a,b,x0,T,p),'b-')
    // legend()
endfunction
