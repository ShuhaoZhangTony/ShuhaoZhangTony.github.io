index = zeros(m,2);
 for i=1:m
     [C,I]=max(f(i,:));
     index(i,:) = [i,I];
 end
 index