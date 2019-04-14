clc;
clear;
load ('ad_data.mat');
[row, col] = size(X_test);
X_test(:, col+1) = 1;

par_list = [10^-8, 0.01, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1];
feature_num_list = [];
AUC_list = [];
for i=1:length(y_test)
    if y_test(i) == -1
        y_test(i) = 0;
    end
end

fig = figure;
for i=1:length(par_list)
    par = par_list(i);
    [w, c] = logistic_l1_train(X_train, y_train, par);
    feature_num = nnz(w);
    feature_num_list(i) = feature_num;
    
    weights = [w; c];
    scores = sigmoid(X_test*weights);
    [X,Y,T,AUC] = perfcurve(y_test,scores, 1);
    AUC_list(i) = AUC;
    plot(X,Y)
    disp(num2str(AUC));
    hold on;
end
hold off;
xlabel('False positive rate') 
ylabel('True positive rate')
title('ROC for Classification by Logistic Regression')
saveas(fig, 'ROC for Classification by Logistic Regression.jpg');
close;

fig = figure;
plot(par_list, feature_num_list);
xlabel('Parameter') 
ylabel('Feature number')
title('Feature number for L-1 parameter');
saveas(fig, 'Feature number for L-1 parameter.jpg');
close;

fig = figure;
plot(par_list, AUC_list);
xlabel('Parameter') 
ylabel('AUC')
title('AUC for L-1 parameter');
saveas(fig, 'AUC for L-1 parameter.jpg');
close;