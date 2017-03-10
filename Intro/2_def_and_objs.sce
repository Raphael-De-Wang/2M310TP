
// help(who)
x = 10

// ====    ====    ====    ====  1. stack size and envirment ====    ====    ====    ==== 
who
whos

who("local")
who("global")

[names, mem] = who('local','sorted')

whos -name x

whos -type constant

exists("x")

type(x)

typeof(x)

clear

// ====    ====    ====    ====  2.1.1 Nombre reel et complexes ====    ====    ====    ==== 

a = 1 + 1

x = 0.3; y = log(sin(1+x))

exp(%i-2)

// ====    ====    ====    ====  2.1.2 String  ====    ====    ====    ==== 

"Chaine = string"

// attention ! in string, '' -> '
"Je m''appelle Scilab"

str = "Je m''appel" + "le Scilab"
part(str, 14:20)

expression = "sin(3) + 1"
evstr(expression)

instruction = "z = sin(3) + 1";
execstr(instruction) ;

// ====    ====    ====    ====  2.1.3 Booleens ====    ====    ====    ==== 

// True 
%t

// False
%f

// booleen operations
i = 10;
i > 10
i < 10 
i == 10
i >= 10
i <= 10
~(i > 10)
%t & %t
%t | %f

// short exemple :
if %t then disp("Hello World"), end

// ====    ====    ====    ====  2.2.1 Vector and matrix ====    ====    ====    ==== 

/// ------------ bis : polynome - calling sequence ------------

p = %s^2 + 2 * %s +1;
roots(p)
coeff(p)

s = poly(0, "s");
p1 = s^2 + 2*s +1
roots(p1)
coeff(p1)

/// ------------------------------------------------------------

T_abb = ["Francois", "32"; "Pierre", "31"; "Ali", "76"]

A = [1,3;2,4]
B = [A, A; [1,0,1,0]]
C = [ 1 2 3
      4 5 6
      7 8 9 ]
      
P = [1, %s + 1]

B + 2 * ones(B)

I  = 1 : 10
I2 = 1 : 2 : 10
I3 = (1:2:10)/10

M = [ zeros(10,1), eye(10,9) ] + [zeros(1,10); eye(9,10)] + eye(10,10) * 2

linspace(1,20,20)
linspace([1:4]',[5:8]',10)
linspace(1+%i,2+2*%i,5)

logspace(1,2,10)
logspace([1:3]',[4:6]',4)

a=[1 2 3;4 5 6]
matrix(a,1,6)
// If one of the dimension m or n is equal to -1 it is automatically assigned to the quotient of size(v,'*') by the other dimension.
matrix(a,1,-1)
matrix(a,3,2)

// hypermatrices
a(1,1,1,1:2)=[1 2]
a=[1 2;3 4];a(:,:,2)=rand(2,2)
a(1,1,:)
typeof(a)
size(a)
size([a,a])
size([a;a])

// product of array elements
prod(A)
// help prod

// ====    ====    ====    ====  2.2.2 Extraction and Insertion  ====    ====    ====    ====
A = rand(3,3)
A([1,2],[1,3])
A(1,:)
A([1,2],[1,3]) = ones(2,2)
A == 1
T_abb(:,3) = "Paris"
A([1,2],:)
// exchange first and last line
A([1,$],:) = A([$,1],:)
// $ means last element
T_abb($+1,:) = ["Tina", "6", "Paris"]
T_abb(find(T_abb(:,1)=="Pierre"),2)
V = [1 4 12 8]
V([4 6]) = [-1 -2]
A(:)

// ====    ====    ====    ====  2.2.3 Operations Vectorielles et Matriciellles  ====    ====    ====    ====
a = [1:3,2:4]
a + a
sin(a)
a .* a
a .^ (1/2)

a = [1,3] * [1,3]'
a * a
a ^ (1/2)

a = ["s", "fr"; "wer", "sdf"]
a + a
part(a,1)
length(a)

// ====    ====    ====    ====  2.2.4 Sparse Matrix  ====    ====    ====    ====
sp = sparse([1,2;4,5;3,10],[1,2,3])
size(sp)

// ====    ====    ====    ====  2.2.5 Simple Structrue  ====    ====    ====    ====
//create a struct date
date_st=struct('day',25,'month','DEC','year',2006)
date_st.month='AUG';
date_st.year=1973;
date_st.day=19;
date_st.semaine=32;

c = list("chaine", rand(2,2))
c(1)
c(2)

// ====    ====    ====    ====  2.2.6 Vectorisation  ====    ====    ====    ====

x = [0:999]/1000;
y = cos(2*x.^2);
plot2d(x,y)

dy = y(2:$) - y(1:$-1);
p = dy(1:$-1) .* dy(2:$);

y( find( p > mean(p) ) )

x = linspace(1,%pi,25);
y = linspace(1,2*%pi,25);
plot3d(x,y, 10 * sin(x)' * cos(y))

// help plot3d1
// help plot3d2
// help plot3d3



