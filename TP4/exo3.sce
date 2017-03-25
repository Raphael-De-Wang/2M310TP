function rst = a(t)
    rst = sin(t);
endfunction

function rst = b(t)
    rst = cos(t);
endfunction

function rst = c(t)
    rst = -cos(t);
endfunction

function rst = d(t)
    rst = sin(t);
endfunction

function m = A(t)
    m = [a(t),b(t);c(t),d(t)];
endfunction 
