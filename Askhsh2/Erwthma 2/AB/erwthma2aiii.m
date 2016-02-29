
%A=rand(1,n); %dhmiourgia tuxaiou A gia test
B=sort(A); %taxinomisi tou A
for i=1:(n-1)
	B(i+1)=B(i)+B(i+1); %prosthesh tou x(i+1)=x(i)+x(i+1)
	B(i)=0; %mhdenismos tou stoixeiou x(i)
end
