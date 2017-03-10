clear


// boule : 
N = 10;

function v = vec(N)
    v = [1:N]
    for i = (1:N),
        v(i) = 2 * i; 
    end
endfunction

v = vec(N)

// if - else

function y = test(x)
    if (x == -1) | (x == 0) | (x == 1) then,
        y = 0;        
    else,
        y = 1/((x-1)*(x+1)*x);
    end
endfunction

test(10)