function timing()

t=zeros(1,100);
tic;toc;
tic;
for i=1:100
t(i)=toc;
end
time=sum(t)/100
end