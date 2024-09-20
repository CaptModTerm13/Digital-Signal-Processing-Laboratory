f = input('Enter the frequency of the sine wave (Hz): ');

Fs_nyquist =4 * f;
Fs_below = 0.75 * Fs_nyquist;
Fs_above = 5 * Fs_nyquist;

duration = 1;
t_original = 0:1/1000:duration;
x_cont = sin(2*pi*f*t_original);

t_below = 0:1/Fs_below:duration;
t_nyquist = 0:1/Fs_nyquist:duration;
t_above = 0:1/Fs_above:duration;

x_below = sin(2*pi*f*t_below);
x_nyquist = sin(2*pi*f*t_nyquist);
x_above = sin(2*pi*f*t_above);

x_below_interp = interp1(t_below, x_below, t_original, 'linear');
x_nyquist_interp = interp1(t_nyquist, x_nyquist, t_original, 'linear');
x_above_interp = interp1(t_above, x_above, t_original, 'linear');

figure;

subplot(4, 1, 1);
plot(t_original, x_cont, 'b', 'LineWidth', 1.5);
title(['Original Sine Wave at ', num2str(f), ' Hz']);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(4, 1, 2);
stem(t_below, x_below, 'r', 'DisplayName', 'Sampled Points');
hold on;
plot(t_original, x_below_interp, 'g', 'LineWidth', 1.5, 'DisplayName', 'Reconstructed Signal');
title(['Sampling Below Nyquist (Fs = ', num2str(Fs_below), ' Hz)']);
xlabel('Time (s)');
ylabel('Amplitude');
legend;
grid on;

subplot(4, 1, 3);
stem(t_nyquist, x_nyquist, 'r', 'DisplayName', 'Sampled Points');
hold on;
plot(t_original, x_nyquist_interp, 'g', 'LineWidth', 1.5, 'DisplayName', 'Reconstructed Signal');
title(['Sampling at Nyquist (Fs = ', num2str(Fs_nyquist), ' Hz)']);
xlabel('Time (s)');
ylabel('Amplitude');
legend;
grid on;

subplot(4, 1, 4);
stem(t_above, x_above, 'r', 'DisplayName', 'Sampled Points');
hold on;
plot(t_original, x_above_interp, 'g', 'LineWidth', 1.5, 'DisplayName', 'Reconstructed Signal');
title(['Sampling Above Nyquist (Fs = ', num2str(Fs_above), ' Hz)']);
xlabel('Time (s)');
ylabel('Amplitude');
legend;
grid on;
