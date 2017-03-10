clear

function y = f1(x)
    y = x.^2;
endfunction

function y = f2(x)
    y = x.^2;
endfunction

// set the current graphic figure with id == 0
scf(0)

// Clear or reset or reset a figure or a frame uicontrol
clf

xtitle

legend