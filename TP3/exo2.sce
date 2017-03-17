clear;


// Q1.1
function solu = courbe_parametree(A,X0)
    if ~isequal( eye(2,2) & A, eye(2,2) & eye(2,2) ) then,
        error("[ERROR] Matrix A have to be diagonal. Verifie A");
    end

    if ~isequal( size(X0), [2,1] ) then,
        error("[ERROR] Verifie vector X0");
    end
    
    solu = expm(A) * X0;

endfunction

// Q1.2

A = [1,0;0,-1];

