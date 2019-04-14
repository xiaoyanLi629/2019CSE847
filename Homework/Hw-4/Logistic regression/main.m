clc;
clear;

data = import_data;
[row, col] = size(data);
data(:, col+1) = 1;
labels = import_labels;

X_train_tot = data(1:2000, :);
Y_train_tot = labels(1:2000, :);
X_test = data(2001:end, :);
Y_test = labels(2001:end, :);

n = [200, 500, 800, 1000, 1500, 2000];
accuracy_list = [];

for i=1:length(n)
    X_train = X_train_tot(1:n(i), :);
    Y_train = Y_train_tot(1:n(i), :);
    [weights] = logistic_train(X_train, Y_train);
    predict = sigmoid(X_test*weights);
    predict = predict-0.5;
    for m= 1:length(predict)
        if predict(m)>=0
            predict(m) = 1;
        else
            predict(m) = 0;
        end
    end
    accuracy = 1-sum((predict-Y_test).^2)/length(Y_test);
    accuracy_list(i) = accuracy;
end

fig = figure;
plot(n, accuracy_list);
xlabel('Training data') 
ylabel('Accuracy')
title('Training data for accuracy Logistic Regression')
saveas(fig, 'Training data for accuracy Logistic Regression.jpg');
close;

