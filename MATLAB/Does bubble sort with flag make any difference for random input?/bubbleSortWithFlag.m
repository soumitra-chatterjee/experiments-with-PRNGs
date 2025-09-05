function [cnt] = bubbleSortWithFlag(A, n)
cnt = 0;
flag = 0;

for pass = 1 : n-1
    for i = 1 : n-pass
        cnt = cnt + 1;
        if(A(i) > A(i+1))
            temp = A(i);
            A(i) = A(i+1);
            A(i+1) = temp;
            flag = 1;
        end
    end
    if(flag == 0) 
        break  % array already sorted

    else 
        flag = 0; % reinitialize flag
    end
end
