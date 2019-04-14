function [weights] = logistic_train(varargin)
    
    switch nargin
        case 2
            disp('2 inputs given')
            data = varargin{1};
            labels = varargin{2};
            epsilon = 10^-5;
            maxiter = 1000;
        case 3
            disp('3 inputs given')
            data = varargin{1};
            labels = varargin{2};
            epsilon = varargin{3};
            maxiter = 1000;
        case 4
            disp('4 inputs given')
            data = varargin{1};
            labels = varargin{2};
            epsilon = varargin{3};
            maxiter = varargin{4};
        otherwise
            error('Unexpected inputs')
    end
    
    [row, col] = size(data);
    sample_num = row;
    weights = zeros(col, 1);
    data(:, col+1) = labels;
    step = 0.5;
    old_tot_loss = 1000;
    
    for ite = 1:maxiter
        tot_loss = 0;

        for ele=1:sample_num
            tot_loss = tot_loss+...
                (data(ele, 59)*log(sigmoid(data(ele, 1:58)*weights))...
                +(1-data(ele, 59))*(1-log(sigmoid(data(ele, 1:58)*weights))));
            if mod(ele, 1000) == 0   
                %disp(ele);
            end
        end

        tot_loss = -tot_loss/sample_num;
        
        if abs(tot_loss-old_tot_loss) <= epsilon
            break;
        end
        
        old_tot_loss = tot_loss;
        
        if mod(ite, 500) == 0
            disp_ite = ['Iteration: ', num2str(ite)];
            disp(disp_ite);
            disp_loss = ['Total loss is: ', num2str(tot_loss)];
            disp(disp_loss);
        end
        

        gradient = -sum((data(:, 59)-sigmoid(data(:, 1:58)*weights)).*...
            data(:, 1:58))/sample_num;

        gradient = gradient';

        weights = weights+step*(-gradient);

    end
end
