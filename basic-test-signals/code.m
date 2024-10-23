clc;clear;
t = -5:0.01:5;    % Continuous time vector 
n = -5:0.1:5;     % Discrete time vector 

figure;

%% 1. Step Signal
subplot(5,2,1);
step_signal_continuous = t >= 0;
step_signal_discrete = n >= 0;
plot(t, step_signal_continuous, 'LineWidth', 2); 
hold on;
stem(n, step_signal_discrete, 'r', 'LineWidth', 2); 
title('Step Signal');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 2. Impulse Signal
subplot(5,2,2);
impulse_signal_continuous = t == 0; 
impulse_signal_discrete = n == 0;
plot(t, impulse_signal_continuous, 'LineWidth', 2);
hold on;
stem(n, impulse_signal_discrete, 'r', 'LineWidth', 2);
title('Impulse Signal');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 3. Ramp Signal
subplot(5,2,3);
ramp_signal_continuous = t .* (t >= 0);
ramp_signal_discrete = n .* (n >= 0);
plot(t, ramp_signal_continuous, 'LineWidth', 2);
hold on;
stem(n, ramp_signal_discrete, 'r', 'LineWidth', 2);
title('Ramp Signal');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 4. Sine Wave
subplot(5,2,4);
sine_wave_continuous = sin(2*pi*t);
sine_wave_discrete = sin(2*pi*n);
plot(t, sine_wave_continuous, 'LineWidth', 2);
hold on;
stem(n, sine_wave_discrete, 'r', 'LineWidth', 2);
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 5. Square Wave
subplot(5,2,5);
square_wave_continuous = square(2*pi*t);
square_wave_discrete = square(2*pi*n);
plot(t, square_wave_continuous, 'LineWidth', 2);
hold on;
stem(n, square_wave_discrete, 'r', 'LineWidth', 2);
title('Square Wave');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 6. Sawtooth Wave
subplot(5,2,6);
sawtooth_wave_continuous = sawtooth(2*pi*t);
sawtooth_wave_discrete = sawtooth(2*pi*n);
plot(t, sawtooth_wave_continuous, 'LineWidth', 2);
hold on;
stem(n, sawtooth_wave_discrete, 'r', 'LineWidth', 2);
title('Sawtooth Wave');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 7. Exponential Signal
subplot(5,2,7);
exp_signal_continuous = exp(-t);  
exp_signal_discrete = exp(-n);    
plot(t, exp_signal_continuous, 'LineWidth', 2);
hold on;
stem(n, exp_signal_discrete, 'r', 'LineWidth', 2);
title('Exponential Signal');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 8. Unipolar Square Wave
subplot(5,2,8);
unipolar_wave_continuous = 0.5*(square_wave_continuous + 1);
unipolar_wave_discrete = 0.5*(square_wave_discrete + 1);
plot(t, unipolar_wave_continuous, 'LineWidth', 2);
hold on;
stem(n, unipolar_wave_discrete, 'r', 'LineWidth', 2);
title('Unipolar Square Wave');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;

%% 9. Cosine Wave
subplot(5,2,9);
cosine_wave_continuous = cos(2*pi*t);
cosine_wave_discrete = cos(2*pi*n);
plot(t, cosine_wave_continuous, 'LineWidth', 2);
hold on;
stem(n, cosine_wave_discrete, 'r', 'LineWidth', 2);
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');
legend('Continuous', 'Discrete');
grid on;
hold off;
