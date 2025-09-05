function [i, A, cnt] = qsortPartition(cnt, A, low, high)

ri = randi([low, high]);
%disp(ri);
key = A(ri);

% swap pivot with last element
temp = A(high);
A(high) = A(ri);
A(ri) = temp;

i = low-1;
for j = low:high-1
    cnt = cnt + 1;
    if(A(j) <= key) 
        i = i+1;
        temp = A(j);
        A(j) = A(i);
        A(i) = temp;
    end
end

i = i + 1;
temp = A(high); %key
A(high) = A(i);
A(i) = temp;
%fprintf("(partition) ");disp(A);
