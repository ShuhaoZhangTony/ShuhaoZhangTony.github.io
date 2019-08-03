% letter frequency analysis
function f=lettersubfreq(s)
x=str2num(s);
[~,n]=size(x);
bin=zeros(1,26);
tempt=0:1:25;
for i=1:n
    for j=1:26;
      if x(i)==tempt(j)
         bin(j)=bin(j)+1;
         break;
      end
    end
end   
f=bin/n;