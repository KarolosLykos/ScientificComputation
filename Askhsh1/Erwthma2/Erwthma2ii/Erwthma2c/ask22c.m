function [ time_i,time_ii  ] = ask3a( )
                                    
                                    

                                    %preallocation twn dianusmatwn gia pio grigori ektelesi 
time_i = zeros(4,1);		  
time_ii = zeros(4,1);
k=1;

for i = 7:10
	                                % arxikopoiisi mitrwou me tuxaies times, diastasewn nxn
	
    n = 2^i;                                
    A = randn(n);
    B = randn(n,1);
    
   A*B;
   lu(A);
    


		                            
    time_i(k,1) = timeit(@() lu(A));
    time_ii(k,1) = timeit(@()  A*B);
    k=k+1;
   
end
                                    %Grafiki parastash  
                                    
figure
plot(2.^(7:10), time_i(1:4), '-^g',2.^(7:10), time_ii(1:4), '-+r' )
legend('time_i','time_ii')
title('XRONOMETRHSH')
xlabel('n')
ylabel('Time')
end