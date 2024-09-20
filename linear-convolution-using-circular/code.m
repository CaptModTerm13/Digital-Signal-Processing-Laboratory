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