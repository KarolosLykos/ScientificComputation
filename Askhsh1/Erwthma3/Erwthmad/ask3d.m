function [ time_AA, time_IA] = ask3a( )
                                    % ERWTIMA 2ii(a)  -- Axiologhsh ths epidoshs sunarthsewn oi opoies ulopoiountai eswterika sto MATLAB. --
                                    %Ypologismos xronou ekteleshs twn lu,qr,svd,eig me xrhsh tic.toc
                                    %Ektelesh prakshs 1 fora

                                    %preallocation twn dianusmatwn gia pio grhgorh ektelesh 
time_AA = zeros(4,1);		        % xronos gia tin lu
time_IA = zeros(4,1);
k=1;

for i = 7:10                                    % arxikopoiisi mitrwou me tuxaies times, diastasewn nxn
                                
    n = 2.^i;                                
                                    
    A = randn(n);
    I = eye(n);

   
                                    
	
	
		
    time_AA(k,1)= timeit(@() A*A );
	
		
    time_IA(k,1)= timeit(@() I*A);
    k=k+1;

     


   
   
end
                                    %Grafikh parastash
figure
semilogy(2.^(7:10), time_AA(1:4,1), '-^g',2.^(7:10), time_IA(1:4,1), '-+r')
legend('AA' , 'IA')
title('XRONOMETRHSH')
xlabel('n')
ylabel('Time')
end



