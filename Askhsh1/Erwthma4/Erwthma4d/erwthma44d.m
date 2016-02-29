function [ time_i,time_ii  ] = ask44( )
                                    % ERWTIMA 2ii(c) -- Axiologhsh ths epidoshs sunarthsewn oi opoies ulopoiountai eswterika sto MATLAB. --
                                    %Ypologismos xronou ekteleshs twn lu,qr,svd,eig me xrhsh timeit
                                    

                                    %preallocation twn dianusmatwn gia pio grigori ektelesi 
time_i = zeros(4,1);
time_ii = zeros(4,1);
mflops_i= zeros(4,1);
mflops_ii= zeros(4,1);
praxeis_i=zeros(4,1);
praxeis_ii=zeros(4,1);
k=1;

for i = 8:11
	n = 2^i;                                
    u = randn(n,1);
    v = randn(n,1);
    col1=4;
    col2='';
    p=4;    
    
    %upologismos twn praxewn opws upologisthke sto erwthma a
	praxeis_i(k,1) = (2*n.^2)+(p-1)*(n.^2*(2*n-1));
    praxeis_ii(k,1) = (2*n^2+3*n-1)+(p-1)*n;;
    
    %an epilegoume thn sthlh px 4
    time_i(k,1) = my_func(p,u,v,col1);
    mflops_i(k,1)= round(praxeis_i(k,1)/time_i(k,1));
    
    %an den exoume epilexei mia sthlh
    time_ii(k,1)= my_func(p,u,v,col2);
    mflops_ii(k,1)= round(praxeis_ii(k,1)/time_ii(k,1));
   k=k+1;
end
                                    %Grafiki parastash  
                                    
figure
semilogy(2.^(7:10), time_i(1:4), '-^g',2.^(7:10), time_ii(1:4), '-+r' )
legend('time_i','time_ii')
title('XRONOMETRHSH')
xlabel('n')
ylabel('Time')


figure
semilogy(2.^(7:10), mflops_i(1:4), '-^g',2.^(7:10), mflops_ii(1:4), '-+r' )
legend('mflops_i','mflops_ii')
title('MFLOPS')
xlabel('n')
ylabel('mflops')


end