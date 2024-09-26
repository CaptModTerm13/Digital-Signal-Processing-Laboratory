x=[1,2,3,4]
disp('dft of x[n] is');
X_fft=fft(x);
disp(X_fft);
figure;
stem(abs(X_fft));
xlabel('Time scale');
ylabel('Magnitude');
title('DFT of x');
