x = [1, 2, 3, 4];
h = [1,1,1];
N=max(length(x),length(h));
disp('Convolution result using matrix method:');
y=cconv(x,h,N)
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

