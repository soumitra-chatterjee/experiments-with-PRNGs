function [cnt] = bubbleSort(A, n)
cnt = 0;
for pass = 1 : n-1
    for i = 1 : n-pass
        cnt = cnt + 1;
        if (A(i) > A(i+1)) % swap
            temp = A(i);
            A(i) = A(i+1);
            A(i+1) = temp;
        end
    end
end
