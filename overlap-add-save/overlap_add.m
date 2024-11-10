% User input for the input sequence
x = input('Enter the input sequence x : ');

% User input for the impulse response
h = input('Enter the impulse response h : ');


% Section length for overlap-save
L = length(h);  % Length of impulse response

% Initialization
N = length(x);
M = length(h);

% Pad input x with zeros
x_padded = [x, zeros(1, L - 1)];

% Prepare the output array
y = zeros(1, N + M +1);

% Calculate the number of sections
num_sections = (N + L - 1) / L;  % Calculate number of sections

% Process sections
for n = 0:num_sections-1
    % Determine the current section
    start_idx = n * L + 1;
    end_idx = start_idx + L - 1;

    % Ensure the section does not exceed the bounds
    x_section = x_padded(start_idx:min(end_idx, end));
    
    % Convolution
    conv_result = conv(x_section, h);
    
    % Save the results to the output
    y(start_idx:start_idx + length(conv_result) - 1) =y(start_idx:start_idx + length(conv_result) - 1) + conv_result;
end

% Trim the output to the valid part
y = y(1:N + M - 1);

% Compare with built-in convolution
y_builtin = conv(x, h);

% Display results
disp('Overlap-save convolution result:');
disp(y);
disp('Built-in convolution result:');
disp(y_builtin);

% Plotting results
figure;
subplot(2, 1, 1);
stem(y, 'filled');
title('Overlap-Save Convolution Result');
grid on;

subplot(2, 1, 2);
stem(y_builtin, 'filled');
title('Built-in Convolution Result');
grid on;