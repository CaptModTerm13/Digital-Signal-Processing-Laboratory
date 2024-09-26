disp('Inverse fourier transform of the sequence');
x_fft=[10.0000 + 0.0000i,  -2.0000 + 2.0000i,  -2.0000 + 0.0000i,  -2.0000 - 2.0000i]
disp('is');
x=zeros(1,length(x_fft));
for k=0:length(x_fft)-1
    for m=0:length(x_fft)-1
        x(k+1)=x(k+1)+x_fft(m+1)*exp(1i*2*pi*m*k/length(x_fft));
    end
end
x=(1/length(x_fft))*x
abs(x)