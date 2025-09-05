function [cnt, A] = quickSort(cnt, A, low, high)
cnt = cnt + 1;

if(low < high) 
    [pivot, A, cnt] = qsortPartition(cnt, A, low, high);
    % fprintf("low: %d high: %d pivot: %d\n", low, high, pivot);

    [cnt, A] = quickSort(cnt, A, low, pivot-1);

    [cnt, A] = quickSort(cnt, A, pivot+1, high);
end
