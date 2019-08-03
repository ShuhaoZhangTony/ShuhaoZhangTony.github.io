%digram frequency analysis
function [a,b]=disubfreq(s,t)
num_s=str2num(s);
num_t=str2num(t);
T0=find(num_s==num_t);
[~,n]=size(num_s);
tempt=0:1:25;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ta=T0+1;
[~,Ta_size]=size(Ta);

if Ta(Ta_size)>n
   Ta=Ta(1:(Ta_size-1));
   Ta_size=Ta_size-1;
end

t_x=num_s(Ta);
a_bin=zeros(1,26);
for i=1:Ta_size
    for j=1:26
        if t_x(i)==tempt(j)
            a_bin(j)=a_bin(j)+1;
            break;
        end
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Tb=T0-1;
[~,Tb_size]=size(Tb);

if Tb(1)==0
    Tb=Tb(2:end);
    Tb_size=Tb_size-1;
end

x_t=num_s(Tb);
b_bin=zeros(1,26);
for i=1:Tb_size
    for j=1:26
        if x_t(i)==tempt(j)
            b_bin(j)=b_bin(j)+1;
            break;
        end
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a=a_bin/n;        
b=b_bin/n;        
        
        
        
        
        
        
        
        
        
        
        