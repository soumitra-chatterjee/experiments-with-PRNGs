% x-plot is instance characteristics
X = zeros(1, 1000);

% y-plot is the cost of algorithm
Y_qsort = zeros(1, 1000);
Y_mqsort = zeros(1, 1000);

plot_i = 1;


n = 5; 
while(n <= 1000)
    A = round(rand(1, n)*100);
    qArray = A;
    mqArray = A;
    
    cnt = 0;
    [qCost, qArray] = quickSort(cnt, qArray, 1, n);
    fprintf("Quick Sort result: (cost: %d) (N: %d)\n",  qCost, n); 
    Y_qsort(plot_i) = qCost;

    cnt = 0;
    [mqCost, mqArray] = modifiedQuickSort(cnt, mqArray, 1, n);
    fprintf("Modified Quick Sort result: (cost: %d)\n",  mqCost); 
    Y_mqsort(plot_i) = mqCost;

    X(plot_i) = n;
    plot_i = plot_i + 1;

    % continuation of while loop
    n = n+1;
end

n_plot = plot_i - 1; 
plot(X(1:n_plot), Y_qsort(1:n_plot), 'c', X(1:n_plot), Y_mqsort(1:n_plot), 'm' );
legend("Quick Sort", "Modified Quick Sort");
xlabel("Instance Characteristics: N (No. of elements)");
ylabel("Cost of operations");
title("Modified quick sort VS Quick sort");
grid on;
