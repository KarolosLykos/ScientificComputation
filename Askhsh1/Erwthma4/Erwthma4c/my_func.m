function [my_func , xronos ] = my_func(p,u,v,col)
 
cols = @(u)size(u,2);
n=cols(u);
 
I=eye(n);
 
if isempty(col) == 1
    matrixc = (I-u*v').^p;
    f = @() (I-u*v').^p;
    time= timeit(f);
    
else
    e = I(:,col);
    g = @() ((I*e-u*v'*e).^p);
    matrix = (I*e-u*v'*e).^p);
    time = timeit(g);
end
    
xronos = time;
my_func = matrix;
end

