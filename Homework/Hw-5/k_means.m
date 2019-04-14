% clustering
% k-means
% L-2 norm used

function classifier = k_means(varargin)
% This is help text for k_means clustering
% L-2 norm used as distance measure
% random samples selected as initial centroids
% Four input required: data. class number, epsilon, maxiter
% If epsilon not provided, 10^-5 is provided
% If maxiter not provided, 1000 is provided

    switch nargin
        case 2
            disp('2 inputs given')
            data = varargin{1};
            class_num = varargin{2};
            epsilon = 10^-5;
            maxiter = 1000;
        case 3
            disp('3 inputs given')
            data = varargin{1};
            class_num = varargin{2};
            epsilon = varargin{3};
            maxiter = 1000;
        case 4
            disp('4 inputs given')
            data = varargin{1};
            class_num = varargin{2};
            epsilon = varargin{3};
            maxiter = varargin{4};
        otherwise
            error('Unexpected inputs')
    end

[sample_num, feature_num] = size(data);
feature_num = feature_num;

classifier = zeros(sample_num , 1);
sample_dist = zeros(sample_num , class_num);

centroid_label = randperm(sample_num, class_num);
centroid = data(centroid_label, :);

for ite = 1:maxiter
    
    for ele = 1:sample_num
        for class = 1:class_num
            sample_dist(ele, class) = norm(data(ele, :)-centroid(class, :));
        end
    end
        
    for ele = 1:sample_num
        classifier(ele) = find(sample_dist(ele, :)==min(sample_dist(ele, :)));
    end
    
    old_centroid = centroid;
        
    for class = 1:class_num
        class_data = data(classifier==class, :);
        centroid(class, :) = sum(class_data)/length(class_data);
    end
    
    
    if norm(old_centroid-centroid) <= epsilon
        disp('Break by converge');
        disp(num2str(norm(old_centroid-centroid)));
        break;
    end
end

    
end


    