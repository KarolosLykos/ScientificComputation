
n=1024;
a=rand(n,n);
A=single(a);
b=rand(n,n);
B=single(b);
C1=mtimes(A,B);
z1=strassen(A,B);
double(C1);
double(z1);



c=rand(n,1);
A1=single(c);
d=rand(n,1);
B1=single(d);
A3=vander(A1);
B3=vander(B1);
C2=mtimes(A3,B3);
z2=strassen(A3,B3);
double(C2);
double(z2);


n=512;
c4=eye(n);
d1=zeros(n,n);
a1=[c4 d; d c4];
b1=[(10^7)*rand(n) rand(n); rand(n) rand(n)];
A4=single(a1);
B4=single(b1);
C3=mtimes(A4,B4);
z3=strassen(A4,B4);
double(C3);
double(z3);