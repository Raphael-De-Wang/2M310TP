clear

function y = sq(x)
    y = x^2
endfunction


deff("y=cube(x)","y=x^3");


function [v,ind] = wsort(v,op),
    if length(v) == 0 then, 
        return;
    end
    select op
    case "a" then,
    	[junk,ind] = gsort(rand(v));
	v = v(ind)
    case "d" then,
    	[v,ind] = gsort(v)
    case "c" then,
        [v,ind] = gsort(v)
	v = v($:-1:1)
	ind = ind($:-1:1)
    else
	error("Invalid option !")
    end
endfunction


function [v,ind] = msort(v,op),

    function [v,ind] = do_random_sort(v)
    	[junk,ind] = gsort(rand(v));
	v = v(ind)
    endfunction
    
    function [v,ind] = do_decrease_sort(v)
    	[v,ind] = gsort(v);
    endfunction

    function [v,ind] = do_increase_sort(v)
    	[v,ind] = gsort(v);
	v = v($:-1:1)
	ind = ind($:-1:1)
    endfunction
    
    if length(v) == 0 then, 
        return;
    end
    
    select op
    
    case "a" then,
    	[v,ind] = do_random_sort(v)
    case "d" then,
    	[v,ind] = do_decrease_sort(v)
    case "c" then,
    	[v,ind] = do_increase_sort(v)
    else
	error("Invalid option !")
    end
endfunction

function [v,ind] = msort2(v,op),

    function do_random
    	[junk,ind] = gsort(rand(v));
	v = v(ind)
    endfunction
    
    function do_decrease
    	[v,ind] = gsort(v);
    endfunction

    function do_increase(v)
    	[v,ind] = gsort(v);
	v = v($:-1:1)
	ind = ind($:-1:1)
    endfunction

    op_list = ["do_random", "do_decrease", "do_increase"]
    
    if length(v) == 0 then, 
        return;
    end
    
    op_func_i = find(op_list == "do_"+op);
    
    if length(op_func_i) == 0 then,
	error("Invalid option !")
    end

    op_func_i = op_func_i(1)
    
    execstr("exec("+op_list(op_func_i)+",-1)")

endfunction


