% clustering
% Spectral relaxation k-means
% L-2 norm used

function classifier = k_means_spec(varargin)
% This is help text for Spectral Relaxation k-means
% L-2 norm used as distance measure
% Input is data matrxi with each row is one data and each colum is one
% feature
switch nargin
    case 1
        disp('1 inputs given')
        data = varargin{1};
        class_num = lengh(data);
    case 2
        disp('2 inputs given')
        data = varargin{1};
        class_num = varargin{2};

H = data*data';
[eig_vec, eig_val] = eig(H);
eig_val = eig_val;

eig_vec = fliplr(eig_vec);
classifier = zeros(length(eig_vec), 1);

result = zeros(size(eig_vec));

for ele = 1:length(result)
    pos = result(ele, :) == max(result(ele, :));
    result(ele, pos)= 1;
end

num_each_class = sum(result);

[out,idx] = sort(num_each_class);
out = out;

index = idx(1:class_num);
eig_vec_trunc = eig_vec(:, index);

for ele = 1:length(eig_vec_trunc)
    classifier(ele) = find(eig_vec_trunc(ele, :) == max(eig_vec_trunc(ele, :)));
end



end
    