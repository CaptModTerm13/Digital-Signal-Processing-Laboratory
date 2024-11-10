clc;
clear;

% Bandpass Filter Design using different windows

% Define cutoff frequencies for Bandpass Filter
wc1 = 0.2 * pi;  % Lower cutoff frequency (normalized to pi)
wc2 = 0.5 * pi;  % Upper cutoff frequency (normalized to pi)

% Filter order input
N = input('Enter the filter order (N):');
alpha = (N-1)/2;

% Small epsilon to avoid division by zero at n = alpha
eps = 0.001;

% Time indices for impulse response
n = 0:N-1;

% Ideal Bandpass Filter Impulse Response (hd)
hd = ((sin(wc2*(n-alpha)) - sin(wc1*(n-alpha))) + eps) ./ (pi*(n-alpha)+eps);

% Rectangular Window
wr_b = boxcar(N);
hn_rect = hd .* wr_b';  % Applying window to impulse response

% Frequency response for Rectangular Window
w = 0:0.01:pi;
h_rect = freqz(hn_rect, 1, w);

% Plot Rectangular Window and its Frequency Response
figure;
subplot(3, 2, 1);
stem(wr_b);
title('Rectangular Window');

subplot(3, 2, 2);
plot(w/pi, 20*log10(abs(h_rect)));
title('Bandpass Filter using Rectangular Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;
legend('Rectangular');

% Hamming Window
wr_hm = hamming(N);
hn_hm = hd .* wr_hm';  % Applying Hamming window

% Frequency response for Hamming Window
h_hm = freqz(hn_hm, 1, w);

% Plot Hamming Window and its Frequency Response
subplot(3, 2, 3);
plot(w/pi, 20*log10(abs(h_hm)));
title('Bandpass Filter using Hamming Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;
legend('Hamming');

% Hanning Window
wr_hn = hanning(N);
hn_hn = hd .* wr_hn';  % Applying Hanning window

% Frequency response for Hanning Window
h_hn = freqz(hn_hn, 1, w);

% Plot Hanning Window and its Frequency Response
subplot(3, 2, 4);
plot(w/pi, 20*log10(abs(h_hn)));
title('Bandpass Filter using Hanning Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;
legend('Hanning');

% Bartlett Window
wr_bart = bartlett(N);
hn_bart = hd .* wr_bart';  % Applying Bartlett window

% Frequency response for Bartlett Window
h_bart = freqz(hn_bart, 1, w);

% Plot Bartlett Window and its Frequency Response
subplot(3, 2, 5);
plot(w/pi, 20*log10(abs(h_bart)));
title('Bandpass Filter using Bartlett Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;
legend('Bartlett'); 