function [time_i, time_ii, time_iii, B] = ask3a()

time_i=zeros(4,1);
time_ii=zeros(4,1);
time_iii=zeros(4,1);
k=1;

for i=7:10
    n=2^i;
 A=rand(n);
 b=rand(n,1);
 
 %random Pinakas
 
 time_i(k,1)= timeit(@() mldivide(A,b),0 );
 
 %anw trigwnikos pinakas me tin xrhsh tis sunarthshs tril(A)
 
 A=tril(A);
 time_ii(k,1)= timeit(@() mldivide(A,b), 0);
 
 %Puxologika mhtrwa pou einai katw trigwnika me thn xrhsh ths sunarthshs
 %randperrm
 
 randp= randperm(n);
 B= A(:, randp );
 time_iii(k,1)= timeit(@() mldivide(B,b), 0);
 
 k=k+1;
 
end
figure
semilogy(2.^(7:10), time_i(1:4), '-^g',2.^(7:10), time_ii(1:4), '-+r',2.^(7:10), time_iii(1:4),'-om')
legend('timte_i' , 'time_ii','time_iii')
title('XRONOMETRHSH')
xlabel('n')
ylabel('Time')
				

end