x=[1,2,-1,2,3,-2,-3,-1,1,1,2,-1];
m=length(x);
xl=0;
xh=xl+m-l;
nx=xl:l:xh;
h=[1,2,3,-1];
l=length(h);
hl=0;
hh=hl+l-1;
g=hl:1:hh;
N=m+l-1;
h1=[h zeros(1,N-m)];
n3=length(h1);
y=zeros(1,N);
x1=[zeros(1,n3-1) x zeros(1,n3)];
H=fft(h1);
for i=l:1:N
    y1
