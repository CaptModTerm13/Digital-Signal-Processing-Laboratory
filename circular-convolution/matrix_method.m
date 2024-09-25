% Define the sequences
x = [1, 2, 3, 4];
h = [1, 1, 1];
x_len = length(x);
h_len = length(h);
y_len = max(x_len,h_len);  
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


% Plot the sequences
n_x = 0:length(x)-1;  % Time indices for x
n_h = 0:length(h)-1;  % Time indices for h
n_y = 0:length(y)-1;  % Time indices for convolution result
figure;
% Plot x[n]
subplot(3,1,1);
stem(n_x, x, 'filled');
title('Signal x[n]');
xlabel('n');
ylabel('x[n]');
grid on;
% Plot h[n]
subplot(3,1,2);
stem(n_h, h, 'filled');
title('Signal h[n]');
xlabel('n');
ylabel('h[n]');
grid on;
% Plot the convolution result y[n]
subplot(3,1,3);
stem(n_y, y, 'filled');
title('Convolution y[n] = x[n] * h[n]');
xlabel('n');
ylabel('y[n]');
grid on;
