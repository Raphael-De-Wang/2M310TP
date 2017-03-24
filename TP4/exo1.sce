clear;

exec libTP4.sce

// Q1 : libTP4.sce - EulerExplicite(a,b,x0,T,p)

// Q2 : libTP4.sce - plotSchemaEuler(a,b,x0,T,p,fun)
function rst = a(t)
      // rst = sin(t);
      rst = 1;
endfunction

function rst = b(t)
    rst = t * 0;
endfunction

T = 40;
p = 700;
x0= 1;
// XApprox = EulerExplicite(a,b,x0,T,p);

// plotSchemaEuler(a,b,x0,T,p,EulerExplicite);

// Q3 :

function X = solExacte(a,b,x0,T,p)
    hp = T/p;
    t = linspace(0,T,p+1);
    X = x0*exp(a(t)*t)
endfunction

// Q4

// plotSchemaEuler(a,b,x0,T,p,solExacte);

// Q5 : libTP4.sce - graphSchemaEulerComp(a,b,x0,T,p,f1,f2)

// Q6 : libTP4.sce - EulerImplicite(a,b,x0,T,p)

// XApprox = EulerImplicite(a,b,x0,T,p)

// plotSchemaEuler(a,b,x0,T,p,EulerImplicite)
// graphSchemaEulerComp(a,b,x0,T,p,EulerExplicite,EulerImplicite)

// Q7
// graphSchemaEulerComp(a,b,x0,T,p,solExacte,EulerImplicite)
// graphSchemaEulerComp(a,b,x0,T,p,solExacte,EulerExplicite)

graphCmp(a,b,x0,T,p,solExacte,EulerExplicite,EulerImplicite)