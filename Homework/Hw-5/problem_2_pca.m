clc;
clear

% PCA analysis

load('USPS.mat');
A_data = A-mean(A);

data = A_data'*A_data;

[eig_vec, eig_val] = eig(data);
eig_vec = fliplr(eig_vec);


% PCA 2

v_1 = [1; -2];
v_2 = [2; 1];
v_1 = v_1/norm(v_1);
v_2 = v_2/norm(v_2);
eig_2 = zeros(256, 2);
eig_2(1:2, 1:2) = [v_1, v_2];

data_2 = A*eig_2*eig_2';
image_2_1 = reshape(data_2(1, :), 16, 16);
image_2_2 = reshape(data_2(2, :), 16, 16);
imwrite(image_2_1, 'image_2_1.jpg');
imwrite(image_2_1, 'image_2_2.jpg');

% Error is alculated by norm of differences

disp('Error is alculated by norm of differences')

% PCA 10
data_10 = A*eig_vec(:, 1:10)*eig_vec(:, 1:10)';
image_10_1 = reshape(data_10(1, :), 16, 16);
image_10_2 = reshape(data_10(2, :), 16, 16);
imwrite(image_10_1, 'image_10_1.jpg');
imwrite(image_10_1, 'image_10_2.jpg');

error_10 = norm(A-data_10);
disp(['10 components error: ', num2str(error_10)])

% PCA 50
data_50 = A*eig_vec(:, 1:50)*eig_vec(:, 1:50)';
image_50_1 = reshape(data_50(1, :), 16, 16);
image_50_2 = reshape(data_50(2, :), 16, 16);
imwrite(image_50_1, 'image_50_1.jpg');
imwrite(image_50_1, 'image_50_2.jpg');

error_50 = norm(A-data_50);
disp(['50 components error: ', num2str(error_50)])

% PCA 100
data_100 = A*eig_vec(:, 1:100)*eig_vec(:, 1:100)';
image_100_1 = reshape(data_100(1, :), 16, 16);
image_100_2 = reshape(data_100(2, :), 16, 16);
imwrite(image_100_1, 'image_100_1.jpg');
imwrite(image_100_1, 'image_100_2.jpg');

error_100 = norm(A-data_100);
disp(['100 components error: ', num2str(error_50)])

% PCA 200
data_200 = A*eig_vec(:, 1:200)*eig_vec(:, 1:200)';
image_200_1 = reshape(data_200(1, :), 16, 16);
image_200_2 = reshape(data_200(2, :), 16, 16);
imwrite(image_200_1, 'image_200_1.jpg');
imwrite(image_200_1, 'image_200_2.jpg');

error_200 = norm(A-data_200);
disp(['200 components error: ', num2str(error_200)])

