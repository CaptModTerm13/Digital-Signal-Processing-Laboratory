x = [1, 2, 3, 4];
h = [1, 1, 1];

disp('Linear convolved sequence using built-in function:');
x_conv = conv(x, h);
disp(x_conv);

conv_length = length(x) + length(h) - 1;
x_new = [x, zeros(1, conv_length - length(x))];
h_new = [h, zeros(1, conv_length - length(h))];

X = fft(x_new);
H = fft(h_new);
Y = ifft(X .* H);

disp('Circular convolution result using FFT:');
disp(Y);
n_x=0:length(x)-1;
n_h=0:length(h)-1;
n_y=0:length(Y)-1;
figure;
subplot(3,1,1);
stem(n_x,x,'filled');
title('Signal x[n]');
xlabel('n');
ylabel('x[n]');
grid on;
subplot(3,1,2);
stem(n_h,h,"filled");
title('Signal h[n]');
xlabel('n');
ylabel('h[n]');
subplot(3,1,3);
stem(n_y,Y,"filled");
title('Linear conv of x[n],h[n]');
xlabel('n');
ylabel('x[n]*h[n]');

