% y-plot is the cost of algorithm
Y_bs = zeros(1, 100);
Y_bs_flag = zeros(1, 100);

% x-plot is instance characteristics, N
X = zeros(1, 100);

plot_i = 1;  % plot index

n = 5; % starting value of N

while(n <= 100) 
    A = round(rand(1, n) * 100);
    bsArray = A;
    bsfArray = A;
    
    Y_bs(plot_i) = bubbleSort(bsArray, n);
    Y_bs_flag(plot_i) = bubbleSortWithFlag(bsfArray, n);
    X(plot_i) = n;

    plot_i = plot_i + 1;
    n = n + 1;
end

n_plot = plot_i - 1; % all points
%n_plot = 20;

plot(X(1:n_plot), Y_bs(1:n_plot), 'm', X(1:n_plot), Y_bs_flag(1: n_plot), 'c');
legend('always runs N-1 passes', 'terminates if array is sorted');
xlabel('Instance Characteristics N (No. of elements)');
ylabel('Cost of Operations');
title('Bubble Sort Comparison (with and without flag)')
grid on;
