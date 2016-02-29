function [my_func ] = my_func(p,u,v,col)

cols = @(u)size(u,1);
n=cols(u);

I=eye(n);

if isempty(col) == 1
   
    f = @() (I-u*v').^p;
    time= timeit(f);
    
else
    e = I(:,col);
    g = @() ((I*e-u*v'*e).^p);
    time = timeit(g);
end
    

my_func = time;
end

