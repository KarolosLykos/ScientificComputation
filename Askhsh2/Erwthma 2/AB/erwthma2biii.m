
A=zeros(4096,1);
x=1/4096; %to diastima pou apexei o enas arithmos apo ton epomeno
A(1)=1+x;
for i=2:4096
    A(i)=A(i-1)+x;
end

C=single(A);
sum=0;
sum_single=0;
%A=rand(1,n); %dhmiourgia tuxaiou A gia test
for i=1:4096
	sum=A(i)+sum; %prosthetw ta stoixeia apo aristera pros ta dexia
    sum_single=C(i)+sum_single;
end
sum; %to teliko athroisma
sum_single;

sum1=0;
sum_single1=0;
%A=rand(1,n);%dhmiourgia tuxaiou A gia test
B=sort(A);%taxinomisi tou A
D=sort(C);
for i=1:4096
	sum1=B(i) + sum1;
    sum_single1=D(i) + sum_single1;
end
sum1;%to teliko athroisma
sum_single1;


sum2=0;
sum_single2=0;
%A=rand(1,n); %dhmiourgia tuxaiou A gia test
B=sort(A); %taxinomisi tou A
D=sort(C);
for i=1:(4096-1)
	B(i+1)=B(i)+B(i+1); %prosthesh tou x(i+1)=x(i)+x(i+1)
	B(i)=0; %mhdenismos tou stoixeiou x(i)
    D(i+1)=D(i)+D(i+1); %prosthesh tou x(i+1)=x(i)+x(i+1)
	D(i)=0; %mhdenismos tou stoixeiou x(i)
end

sum2=B(4096);
sum_single2=D(4096);


sum3=0;
sum_single3=0;
%A=rand(1,n); %dhmiourgia tuxaiou A gia test
[sum3]=pichat(A);
[sum_single3]=pichat(C);
sum_single3;
sum3;
