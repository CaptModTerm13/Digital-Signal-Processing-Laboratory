x=[1,2,3,4];
N=length(x);
X_fft=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        X_fft(k+1)=X_fft(k+1)+x(n+1)*exp(-1i*2*pi*k*n/N);
    end
end
disp("DFT of x[n] is");
disp(abs(X_fft));
figure;
stem(abs(X_fft));
xlabel('Time scale');
ylabel('Magnitude');
title('DFT of x[n]');
