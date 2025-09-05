function [cnt, A] = insertionSort(A, n)
cnt = 0;
for i=2:n
    key = A(i);
    j = i;
    while(j > 1 && key < A(j-1))
        A(j) = A(j-1);
        j = j - 1;
        cnt = cnt+1;
    end
    A(j) = key;
end
