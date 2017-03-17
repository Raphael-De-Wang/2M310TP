clear;

// Q1.
function Nt = Verhulst(t,N0,r,K)
    Nt = N0 * K .* exp(r.*t) ./ (K + N0 .* (exp(r.*t) - 1))
endfunction


// Q2.
function plotSolu(t,r,K)
    mNt = []
    for N0 = (1:5), 
        Nt = Verhulst(t,N0,r,K);
	mNt(N0) = Nt;
    end
endfunction

t = linspace(1,10);

// Q3
function plotVerhulst(t,r,K)
    
endfunction