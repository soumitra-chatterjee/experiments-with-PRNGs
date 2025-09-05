% x-plot is instance characteristics
X = zeros(1, 1000);

% y-plot is the cost of algorithm
Y_qsort = zeros(1, 1000);
Y_isort = zeros(1, 1000);

plot_i = 1;

n = 5; 
while(n < 1000)
    A = round(rand(1, n)*100);
    %fprintf("input: ");disp(A);
    
    qArray = A;
    iArray = A;
    
    cnt = 0;
    [qCost, qArray] = quickSort(cnt, qArray, 1, n);
    fprintf("Quick Sort result: (cost: %d) (N: %d)\n",  qCost, n); %disp(qArray);
    Y_qsort(plot_i) = qCost;

    
    [iCost, iArray] = insertionSort(iArray, n);
    fprintf("Insertion Sort result: (cost: %d)\n",  iCost); %disp(iArray);
    Y_isort(plot_i) = iCost;

    X(plot_i) = n;
    plot_i = plot_i + 1;

    % continuation of while loop
    n = n+1;
end

n_plot = plot_i - 1; % plot first 10, 50 or all points

plot(X(1:n_plot), Y_qsort(1:n_plot), 'c', X(1:n_plot), Y_isort(1:n_plot), 'm' );
legend("Quick Sort", "Insertion Sort");
xlabel("Instance Characteristics: N (No. of elements)");
ylabel("Cost of operations");
title("Performance of Insertion sort VS Quick sort");
grid on;
