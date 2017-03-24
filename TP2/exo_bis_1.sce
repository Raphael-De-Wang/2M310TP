clear;

// Q1 
function rst = div7(n)
    if modulo(n,7) == 0 then,
        rst = "oui"
    else,
        rst = "non"
    end
endfunction

// testcase
div7(7)
div7(10)

// Q2
function S = Syracuse(n)
    S = [n]
    count = 1
    while n <> 1,
        if modulo(n,2) == 0 then,
	    n = n/2;
	else,
	    n = n * 3 + 1;
	end
	S(count+1) = n;
	count = count + 1;
    end
endfunction

// testcase
Syracuse(7)

// Q3
function alt = genQ(n)
    alt = (rand(1,n) > 0.5) * 1;
endfunction

function alt = genE(n,s)
    alt = [];
    for i = (1:10),
        cnt = 0;
	x   = 0;
        while x < s,
	    x = rand();
	    cnt = cnt + 1
	end
	alt(i) = cnt;
    end
endfunction

// testcase
genQ(10)
genE(10,0.9)

