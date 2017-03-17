clear;

exec libTP4.sce

// Q1 : libTP4.sce - EulerExplicite(a,b,x0,T,p)

// Q2 : libTP4.sce - plotSchemaEuler(a,b,x0,T,p,fun)
function rst = a(t)
    rst = sin(t);
endfunction

function rst = b(t)
    rst = t * 0;
endfunction

T = 100;
p = 1000;
x0= 4;
// XApprox = EulerExplicite(a,b,x0,T,p);

// plotSchemaEuler(a,b,x0,T,p,EulerExplicite);

// Q3 :

function solExacte(a,b,x0,T,p)
    disp("UNDEFINED")
endfunction

// Q4

// plotSchemaEuler(a,b,x0,T,p,solExacte);

// Q5 : libTP4.sce - graphSchemaEulerComp(a,b,x0,T,p,f1,f2)

// Q6 : libTP4.sce - EulerImplicite(a,b,x0,T,p)

// XApprox = EulerImplicite(a,b,x0,T,p)

// plotSchemaEuler(a,b,x0,T,p,EulerImplicite)
graphSchemaEulerComp(a,b,x0,T,p,EulerExplicite,EulerImplicite)

// Q7
// graphSchemaEulerComp(a,b,x0,T,p,solExacte,EulerImplicite)

