x=[1,2,3,5];
h=[1,1,1];
x_len = length(x);
h_len = length(h);
y_len = x_len + h_len - 1;  

x_padded = [x, zeros(1, y_len - x_len)];
h_padded = [h, zeros(1, y_len - h_len)]
h_mat = zeros(y_len, y_len);
for i = 1:y_len
    h_mat(:, i) = circshift(h_padded, [0, i-1]);  % Circularly shift the padded h
end
y_matrix = h_mat * x_padded';  

disp('Shifted h matrix:');
disp(h_mat);

disp('Convolution result using matrix method:');
disp(y_matrix');