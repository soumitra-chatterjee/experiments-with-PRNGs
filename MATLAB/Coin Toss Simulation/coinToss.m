nTrials = 5000;
X = zeros(1, nTrials);
Y_prob = zeros(1, nTrials);

plot_i = 1;
n = 1;
while(n <= nTrials)
    head_cnt = 0;
    for j=1:n
        if(round(rand()) == 1) 
            head_cnt = head_cnt + 1;
        end
    end
    head_prob = head_cnt / n;
    Y_prob(plot_i) = head_prob;
    X(plot_i) = n;
    n = n+1;
    plot_i = plot_i + 1;
end

n_plot = plot_i - 1;
plot(X(1:n_plot), Y_prob(1: n_plot), 'm');
xlabel('No of Trials');
ylabel('Head probability');
title('Coin Toss');
grid on;
