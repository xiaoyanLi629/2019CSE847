function labels = import_labels
    filename = '/Users/xiaoyanli/Desktop/2019 Spring/CSE847 Machine Learning/Homework/4/Logistic regression/labels.txt';
    
    delimiter = ' ';
    
    formatSpec = '%f%[^\n\r]';
    
    fileID = fopen(filename,'r');
    
    dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'MultipleDelimsAsOne', true, 'TextType', 'string', 'EmptyValue', NaN,  'ReturnOnError', false);
    
    fclose(fileID);
    
    labels = table(dataArray{1:end-1}, 'VariableNames', {'target'});
    
    clearvars filename delimiter formatSpec fileID dataArray ans
    
    labels = table2array(labels);
end

