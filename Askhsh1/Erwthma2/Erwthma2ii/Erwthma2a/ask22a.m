function [ time_lu, time_Ab] = ask22a( )
                            %xronometrhsh sunarthsewn       
time_lu = zeros(4,1);		%xronos lu       
time_Ab = zeros(4,1);       %xronos A*b
k=1;

for i = 7:10                %epanalhpsh megethwn pinaka               
                                
    n = 2^i;                                
                                    
    A = randn(n);           %tuxaios pinakas megethous n
    B = randn(n,1);         %tuxaio mhtrwo megethous nx1

                             
                            
    lu(A);                  %ektelesh praxh mia fora gia 
    A*B;                    %metaferthoun ta dedomena
    
                                    
	
	tic;                        %metrhsh xronou me thn xrhsh tic toc 
	lu(A);                      %ektelwntas thn praxh mia fora
    time_lu(k,1) =  toc;
    



	tic;                        %metrhsh xronou me thn xrhsh tic toc 
	A*B;                         %ektelwntas thn praxh mia fora
    time_Ab(k,1) = toc;
    k=k+1;

     


   
   
end
                                    %Grafikh parastash
figure
semilogy(2.^(7:10), time_lu(1:4), '-^g',2.^(7:10), time_Ab(1:4), '-+r')
legend('LU' , 'A*b')
title('XRONOMETRHSH')
xlabel('n')
ylabel('Time')
end



