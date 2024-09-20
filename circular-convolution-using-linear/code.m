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