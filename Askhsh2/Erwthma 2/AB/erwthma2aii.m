sum=0;
%A=rand(1,n);%dhmiourgia tuxaiou A gia test
B=sort(A);%taxinomisi tou A
for i=1:n
	sum=B(i) + sum;
end
sum;%to teliko athroisma