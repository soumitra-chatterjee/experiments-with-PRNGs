function [cnt, A] = modifiedInsertionSort(A, low, high)

cnt = 0;

for i=low+1: high
    key = A(i);
    j = i;
    while(j > 1 && key < A(j-1))
        A(j) = A(j-1);
        j = j - 1;
        cnt = cnt+1;
    end
    A(j) = key;
end
