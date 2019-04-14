% Test
clc;
clear;

data_1 = rand(500, 30);
data_2 = rand(500, 30)+10;
data_3 = rand(500, 30)+10;
data = [data_1; data_2; data_3];

y_k_means = k_means(data, 3);
y_k_means_spec = k_means_spec(data, 3);

% k_means error
centroid_1 = sum(data(y_k_means == 1, :))/length(data(y_k_means == 1, :));
centroid_2 = sum(data(y_k_means == 2, :))/length(data(y_k_means == 2, :));
centroid_3 = sum(data(y_k_means == 3, :))/length(data(y_k_means == 3, :));

error_1 = norm(data(y_k_means == 1, :)-centroid_1)^2;
error_2 = norm(data(y_k_means == 2, :)-centroid_2)^2;
error_3 = norm(data(y_k_means == 3, :)-centroid_3)^2;

error_k_means = error_1 + error_2 + error_3;

% k_means_spec error
centroid_1 = sum(data(y_k_means_spec == 1, :))/length(data(y_k_means_spec == 1, :));
centroid_2 = sum(data(y_k_means_spec == 2, :))/length(data(y_k_means_spec == 2, :));
centroid_3 = sum(data(y_k_means_spec == 3, :))/length(data(y_k_means_spec == 3, :));

error_1 = norm(data(y_k_means_spec == 1, :)-centroid_1)^2;
error_2 = norm(data(y_k_means_spec == 2, :)-centroid_2)^2;
error_3 = norm(data(y_k_means_spec == 3, :)-centroid_3)^2;

error_k_means_spec = error_1 + error_2 + error_3;

disp(['k measn error ', num2str(error_k_means)]);
disp(['k means spec error ', num2str(error_k_means_spec)]);



data = rand(1500, 30);

y_k_means = k_means(data, 3);
y_k_means_spec = k_means_spec(data, 3);

% k_means error
centroid_1 = sum(data(y_k_means == 1, :))/length(data(y_k_means == 1, :));
centroid_2 = sum(data(y_k_means == 2, :))/length(data(y_k_means == 2, :));
centroid_3 = sum(data(y_k_means == 3, :))/length(data(y_k_means == 3, :));

error_1 = norm(data(y_k_means == 1, :)-centroid_1)^2;
error_2 = norm(data(y_k_means == 2, :)-centroid_2)^2;
error_3 = norm(data(y_k_means == 3, :)-centroid_3)^2;

error_k_means = error_1 + error_2 + error_3;

% k_means_spec error
centroid_1 = sum(data(y_k_means_spec == 1, :))/length(data(y_k_means_spec == 1, :));
centroid_2 = sum(data(y_k_means_spec == 2, :))/length(data(y_k_means_spec == 2, :));
centroid_3 = sum(data(y_k_means_spec == 3, :))/length(data(y_k_means_spec == 3, :));

error_1 = norm(data(y_k_means_spec == 1, :)-centroid_1)^2;
error_2 = norm(data(y_k_means_spec == 2, :)-centroid_2)^2;
error_3 = norm(data(y_k_means_spec == 3, :)-centroid_3)^2;

error_k_means_spec = error_1 + error_2 + error_3;

disp(['k measn error ', num2str(error_k_means)]);
disp(['k means spec error ', num2str(error_k_means_spec)]);