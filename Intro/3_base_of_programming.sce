// ====    ====    ====    ====    3.1  Script Scilab    ====    ====    ====    ====

// exec("./2_def_and_objs.sce")
// help mode

// --------------------------------
//  0 the default value.
// -1 nothing is printed.
//  1 echo of each command line.
//  2 prompt --> is printed.
//  3 echoes + prompts.
//  4 stops before each prompt. Execution resumes after a carriage return.
//  7 stops + prompts + echoes : useful mode for demos.
// --------------------------------

// help SCIHOME
// scilab.star
// scilab.ini
// .scilab

// ====    ====    ====    ====    3.2 Loop    ====    ====    ====    ====

// ----    ----    3.2.1 for    ----    ----

Ages = (30 : 40);
somme = 0;
for age = Ages, 
    somme = somme + age;
end

for elmt = list(list(), "coucou", 3),
    disp(typeof(elmt));
end

// ----    ----    3.2.2 while    ----    ----

x = 10, 
while x > 0,
    x = x - 1;
    disp(x);
end


// ---- break ----
for x = (1:1000),
    disp(x);
    if x == 10 then,
        break;
    end
end

// ---- continue ----
for x = (1:10),
    if x == 5 then,
        continue;
    end
    disp(x);
end

// ----    ----    3.2.3 if     -----    ----
T_abb = [1:9]' ;
i = 1; str = " "

while str ~= "q",
    disp(T_abb(1,:));
    str = input("Sortir(q), Suivant(s), Precedent(p)", "string");
    if str == "s" then, 
        i = min(i+1, size(T_abb,1))
    elseif str == "p" then,
        i = max(i-1,1)
    elseif str == "q" then,
        break;
    else,
        disp("saisie incorrect!");
	continue;
    end
end

// -----    -----    3.2.4 case    ----    ----
i = 1;
while %t, 
    disp(T_abb(1,:));
    select input("Sortir(q), Suivant(s), Precedent(p)", "string");
    case "s" then, 
        i = min(i+1, size(T_abb,1))
    case "p" then,
        i = max(i-1,1)
    case "q" then,
        break;
    else,
        disp("saisie incorrect!");
    end
end

// -----    -----    3.2.5 exception    ----    ----
try 
    fid = mopen("foo", "r");
    title = mgetl(fid,1);
catch
    mprintf("File Open Failed !")
    title = "Failed"
end

// ====    ====    ====    ====    3.3 Function    ====    ====    ====    ====
