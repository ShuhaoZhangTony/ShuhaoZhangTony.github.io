function p=index_of_co(x)
xs=sort(x);
[~,n]=size(x);
d=length(unique(x));
b=zeros(1,d);
i=1;
for j=1:n-1
    if xs(j+1)==xs(j)
        b(i)=b(i)+1;
    else i=i+1;
        b(i)=1;
    end
end 
for i=1:d
    b(i)=(b(i)^2)/(n^2);
end
p=sum(b);