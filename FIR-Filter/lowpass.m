clc;
clear all;
close all;
% Using Rectangular windowing
wc = 0.5*pi;
N = input('Enter the order:');
alpha = (N-1)/2;
eps = 0.001;
n = 0:1:N-1;
hd = sin(wc*(n-alpha+eps)) ./ (pi*(n-alpha+eps));
wr_b = boxcar(N);
hn = hd .* wr_b';
w = 0:0.01:pi;
h = freqz(hn, 1, w);

figure;
subplot(3, 2, 1);
stem(hd);
title('Ideal Impulse Response (hd)');

subplot(3, 2, 2);
plot(w/pi, 10*log10(abs(h)));
title('Magnitude Response (Rectangular)');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;

subplot(3, 2, 3);
stem(wr_b);
title('Rectangular Window');

subplot(3, 2, 4);
stem(hn);
title('Impulse Response with Rectangular Window');

subplot(3, 2, 5);
h = freqz(hn, 1, w);
plot(w/pi, 20*log10(abs(h)));
title('Low-pass Filter using Rectangular Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;

% Using Hamming window
wr_hm = hamming(N);
hn_hm = hd .* wr_hm';

figure;
subplot(3, 2, 1);
stem(wr_hm);
title('Hamming Window');

subplot(3, 2, 2);
stem(hn_hm);
title('Impulse Response with Hamming Window');

subplot(3, 2, 3);
hm = freqz(hn_hm, 1, w);
plot(w/pi, 20*log10(abs(hm)));
title('Low-pass Filter using Hamming Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;

% Using Hanning window
wr_hn = hanning(N);
hn_hn = hd .* wr_hn';

figure;
subplot(3, 2, 1);
stem(wr_hn);
title('Hanning Window');

subplot(3, 2, 2);
stem(hn_hn);
title('Impulse Response with Hanning Window');

subplot(3, 2, 3);
hm = freqz(hn_hn, 1, w);
plot(w/pi, 20*log10(abs(hm)));
title('Low-pass Filter using Hanning Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;

% Using Bartlett Window
wr_bart = bartlett(N);
hn_bart = hd .* wr_bart';

figure;
subplot(3, 1, 1);
stem(wr_bart);
title('Bartlett Window');

subplot(3, 1, 2);
stem(hn_bart);
title('Impulse Response with Bartlett Window');

subplot(3, 1, 3);
h_bart = freqz(hn_bart, 1, w);
plot(w/pi, 20*log10(abs(h_bart)));
title('Low-pass Filter using Bartlett Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;