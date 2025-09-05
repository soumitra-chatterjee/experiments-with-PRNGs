function [cnt, A] = modifiedQuickSort(cnt, A, low, high)
cnt = cnt + 1;
N = high - low + 1;
if(N > 15) 
    [pivot, A, cnt] = qsortPartition(cnt, A, low, high);
    [cnt, A] = quickSort(cnt, A, low, pivot-1);
    [cnt, A] = quickSort(cnt, A, pivot+1, high);
else
    [temp, A] = modifiedInsertionSort(A, low, high);
    cnt = cnt + temp;
end
