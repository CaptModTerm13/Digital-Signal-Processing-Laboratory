x=[1,2,3,4]
n=length(x);
x_dft=fft(x)
y1=sum((abs(x)).^2)
y2=sum(abs(x_dft).^2);
y2=(1/n)*y2