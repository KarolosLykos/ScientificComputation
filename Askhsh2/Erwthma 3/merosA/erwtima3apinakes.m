n=512;

y1=linspace(-1,1,512);
for k=1:n
    y(k)=cos((k*pi)/(n+1)*k);
end

A1 = randn(n);
A2 = tril(A1);
[L,U] = lu(A1);
A3 = U;
A4 = gfpp(n);
A5 = vander(y1);
A6 = vander(y);

deikths_kat(1,1) = cond(A1,inf);
%gia tn prwto pinaka 

deikths_kat(1,2) = cond(A2,inf);
%gia tn anw trigwniko

deikths_kat(1,3) = cond(A3,inf);
%gia anw trigwnika pou epistrefei h sunarthsh lu

deikths_kat(1,4) = cond(A4,inf);
%me thn sunarthsh qfpp


deikths_kat(1,5) = cond(A5,inf);
%vandermonde 
deikths_kat(1,6) = cond(A6,inf);
%vandermonde chebyshev

x=ones(n,1);
b1=A1*x;
b2=A2*x;
b3=A3*x;

b4=A4*x;
b5=A5*x;
b6=A6 *x;

x2_1=mldivide(A1,b1);
front_error(1,1) = (norm(x2_1-x,inf)/norm(x,inf));
back_error(1,1) = (norm(A1*x2_1-b1,inf)/((norm(A1,inf))*(norm(x2_1,inf))+(norm(b1,inf))));

x2_2=mldivide(A2,b2);
front_error(1,2) = (norm(x2_1-x,inf)/norm(x,inf));
back_error(1,2) = (norm(A1*x2_1-b2,inf)/((norm(A2,inf))*(norm(x2_2,inf))+(norm(b2,inf))));

x2_3=mldivide(A3,b3);
front_error(1,3) = (norm(x2_3-x,inf)/norm(x,inf));
back_error(1,3) = (norm(A1*x2_3-b3,inf)/((norm(A3,inf))*(norm(x2_3,inf))+(norm(b3,inf))));

x2_4=mldivide(A4,b4);
front_error(1,4) = (norm(x2_4-x,inf)/norm(x,inf));
back_error(1,4) = (norm(A1*x2_4-b4,inf)/((norm(A4,inf))*(norm(x2_4,inf))+(norm(b4,inf))));

x2_5=mldivide(A5,b5);
front_error(1,5) = (norm(x2_5-x,inf)/norm(x,inf));
back_error(1,5) = (norm(A1*x2_5-b5,inf)/((norm(A5,inf))*(norm(x2_5,inf))+(norm(b5,inf))));

x2_6=mldivide(A6,b6);
front_error(1,6) = (norm(x2_6-x,inf)/norm(x,inf));
back_error(1,6) = (norm(A1*x2_6-b6,inf)/((norm(A6,inf))*(norm(x2_6,inf))+(norm(b6,inf))));
 

