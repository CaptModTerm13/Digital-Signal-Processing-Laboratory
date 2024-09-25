x = [1, 2, 3, 4];
h = [1, 1, 1];
disp('linear convolved sequence')
x_conv = conv(x, h)
new_len = length(x); 
if length(h) > length(x)
    new_len = length(h);
end
diff=length(x_conv)-new_len;
x_new=x_conv(1:new_len);

for i=1:diff
    x_new(i)=x_conv(i)+x_conv(i+new_len);
end
disp('circular Convolved sequence')
x_new
n_x=0:length(x)-1;
n_h=0:length(h)-1;
n_y=0:length(x_new)-1;
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
stem(n_y,x_new,"filled");
title('Linear conv of x[n],h[n]');
xlabel('n');
ylabel('x[n]*h[n]');
