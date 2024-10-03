x=[1,2,3,4]
disp('dft of x[n] is');
X_fft=fft(x);
disp(X_fft);
figure;
subplot(2,1,1);
stem(0:length(X_fft)-1,abs(X_fft));
xlabel('frequency');
ylabel('Magnitude');
title('DFT of x');
subplot(2,1,2);
stem(0:length(X_fft)-1,angle(X_fft),"filled");
xlabel('frequency');
ylabel('phase (rads)');
title('phase spectrum')