% Define two simple signals
x1 = [1 2 3 4];
x2 = [4 3 2 1];

% Define scalar values
alpha = 2;
beta = 3;

% Compute the DFT of x1 and x2
X1 = fft(x1);
X2 = fft(x2);

% Left-hand side: DFT of (alpha*x1 + beta*x2)
lhs = fft(alpha*x1 + beta*x2);

% Right-hand side: alpha*DFT(x1) + beta*DFT(x2)
rhs = alpha*X1 + beta*X2;

% Check the difference
difference = norm(lhs - rhs); % Should be close to 0

% Display the result
disp(['Difference: ', num2str(difference)]);
if difference < 1e-10
    disp('Linearity is verified.');
else
    disp('Linearity is NOT verified.');
end


