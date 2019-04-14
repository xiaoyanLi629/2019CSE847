function data = import_data
    filename = '/Users/xiaoyanli/Desktop/2019 Spring/CSE847 Machine Learning/Homework/4/Logistic regression/data.txt';

    formatSpec = '%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%16f%f%[^\n\r]';

    fileID = fopen(filename,'r');

    dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'TextType', 'string', 'EmptyValue', NaN,  'ReturnOnError', false);

    fclose(fileID);

    data = [dataArray{1:end-1}];
    
    clearvars filename formatSpec fileID dataArray ans;
end
