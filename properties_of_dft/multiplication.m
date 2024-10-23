%multiplication
clc;
clear;
close all;
x1 = [1 2 3 4];
x2 = [1 0 1 1];
N=max(length(x1),length(x2));
x1new=[x1 zeros(1,N-length(x1))];
x2new=[x2 zeros(1,N-length(x2))];

product = x1new .* x2new;
dft_product=fft(product);
disp(dft_product);

X1 = fft(x1new);
X2 = fft(x2new);
X1fft = fft(X1);
X2fft = fft(X2);

y1 = X1fft.*X2fft;
Y1 = ifft(y1)/N; %without cconv implementing circular conv
disp(Y1);

Y = cconv(X1,X2,N)/N; %built in
disp(Y);

if isequal(dft_product,Y1)
    disp('Multiplication property verified!');
else
    disp('Multiplication property not verified.');
end