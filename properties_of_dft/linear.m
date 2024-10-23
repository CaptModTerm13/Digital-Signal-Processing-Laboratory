%Linearity
clc;
clear;
close all;
x1 = input("Enter sequence 1:");
x2 = input("Enter sequence 2:");
N=max(length(x1),length(x2));
x1new=[x1 zeros(1,N-length(x1))];
x2new=[x2 zeros(1,N-length(x2))];
a = 2;
b = 3;
X1 = fft(x1new)
X2 = fft(x2new)
LHS = fft(a * x1new + b * x2new); % DFT of linear combination
RHS = a * X1 + b * X2; % Linear combination of DFTs
disp("LHS:");
disp(round(LHS, 5));
disp("RHS:");
disp(round(RHS, 5));
% Check if the values match
if isequal(round(LHS, 5), round(RHS, 5))
disp('Linearity property verified!');
else
disp('Linearity property not verified.');
end