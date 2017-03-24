clear;

// init
K = 2;
t = linspace(1,10);
N0 = 1;
r = 1;


// Q1.
function Nt = Verhulst(t,N0,r,K)
    // Nt = N0 * K .* exp(r.*t) ./ (K + N0 .* (exp(r.*t) - 1))
    exp_rt = exp(-r.*t);
    // Nt = N0 * (exp_rt.*(1-N0/K) + N0/K).^(-1)
    Nt = N0 ./ (exp_rt.*(1-N0/K) + N0/K);
endfunction


// Q2.
function plotSolu(t,r,K)
    mNt = []
    for N0 = (1:5), 
        Nt = Verhulst(t,N0,r,K);
	mNt(N0) = Nt;
    end
endfunction

// Q3
function plotVerhulst(t,N0,r,K)
    y = Verhulst(t,N0,r,K)
    plot(t,y)
endfunction

plotVerhulst(t,N0,r,K)