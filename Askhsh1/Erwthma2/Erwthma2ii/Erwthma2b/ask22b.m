function [ time_lu, time_Ab] = ask22b( )
                                    
time_lu = zeros(4,1);		        % xronos gia tin lu
time_Ab = zeros(4,1);
k=1;
for i = 7:10                                    
	
    
    
    
    lu_mo = 0;
    Ab_mo = 0;
                                
    n = 2.^i;                                
                                    
    A = randn(n);                   % arxikopoiisi mitrwou me tuxaies times, diastasewn nxn
    b = randn(n,1);                 % arxikopoiisidianusmatos me tuxaies times, diastasewn nx1

                                    %Ektelesh praxewn mia fora gia na metaferthoun ta dedomena
    lu(A);
     A*b;
    
                                    
	for j = 1:1:10                  %epanalhpsh 10 fores ts xronometrhsh
	tic;                            %gia pio akrivh dedomena
	lu(A);                          
    lu_mo = lu_mo + toc;
    end


    for j = 1:1:10                  %epanalhpsh 10 fores ts xronometrhsh
	tic;                            %gia pio akrivh dedomena
	 A*b;	
    Ab_mo = Ab_mo + toc;           
    end 
    
    time_lu(k,1) = lu_mo /10;           %mesos oros xronwn
    time_Ab(k,1) = Ab_mo / 10;          %mesos oros xronwn

    k=k+1;


   
   
end
                                    %Grafikh parastash
figure
plot(2.^(7:10), time_lu(1:4), '-^g',2.^(7:10), time_Ab(1:4), '-+r')
legend('LU' , 'A*b')
title('XRONOMETRHSH')
xlabel('n')
ylabel('Time')
end



