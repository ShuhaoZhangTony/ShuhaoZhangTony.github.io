function [B,F]=decrypt(C,m)
num=str2num(C);
[~,n]=size(num);
nq=floor(n/m);
B=zeros(m,nq);
F=zeros(1,m);
for i=1:m
   B(i,:)=C(i:m:nq*m);
   F(i)=index_of_co(B(i,:));
end
