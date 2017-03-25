clear;

exec libTP4.sce

function rst = a(t) 
    rst = 1-t;
endfunction

function rst = b(t)
    rst = 0;
endfunction

x0 = 2
T  = 10
p  = 50

function x = solv(a,b,x0,T,p)
    h = x0;
    t = linspace(0,T,p+1);
    x = h*exp(t-(t.^2)/2);
endfunction

// graphSchemaEulerComp(a,b,x0,T,p,EulerImplicite,solv)
graphSchemaEulerComp(a,b,x0,T,p,EulerExplicite,solv)
