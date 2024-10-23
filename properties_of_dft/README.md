### Experiment 9: Properties of DFT

The Discrete Fourier Transform (DFT) has several important properties that make it a powerful tool in signal processing and many other fields. These properties relate the time-domain and frequency-domain representations of discrete signals and help in manipulating, analyzing, and understanding signals effectively.


1. **Linearity**:
   
   The DFT of a linear combination of signals is the same linear combination of their DFTs. If \(x[n]\) and \(y[n]\) are two signals and \(a\) and \(b\) are constants, then:
   
 ```
if DFT{x[n]} = X[k] & DFT{y[n]} = Y[k],
 then DFT{ax[n] + by[n]} = aX[k] + bY[k]
```

2. **Time Shifting**:
   
   Shifting a signal in the time domain results in a corresponding phase shift in the frequency domain. If \(x[n - n_0]\) is the time-shifted signal, then:
   
```
if DFT{x[n]} = X[k],
 then DFT{x[n - n_0]} = e^{-i (2π/N) k n_0} X[k]
```

3. **Frequency Shifting**:
   
   Multiplying a signal by a complex exponential results in a shift in the frequency domain. If \({e^{i (2π/N) n_0 n} x[n]\) is the frequency-shifted signal, then:
   
```
if DFT{x[n]} = X[k],
 then DFT{e^{i (2π/N) n_0 n} x[n]} = X[k - n_0]
```

4. **Multiplication Property**:
   
   The multiplication of two sequences in the time domain corresponds to a circular convolution in the frequency domain:
```
if DFT{x[n]} = X[k],
 then DFT{x[n] * y[n]} = (1/N) * X[k] ⊛ Y[k]

```
  Here, ⊛ denotes circular convolution in the frequency domain.

5. **Convolution Property**:
   
   The circular convolution of two sequences in the time domain corresponds to the multiplication of their DFTs in the frequency domain:
   
```
if DFT{x[n]} = X[k],
 then DFT{x[n] ⊛ y[n]} = X[k] * Y[k]
```

6. **Parseval's Theorem**:
   
   This theorem states that the total energy of a signal in the time domain is equal to the total energy in the frequency domain, scaled by \(N\):
   
 ```
if DFT{x[n]} = X[k],
  then Σ (n=0 to N-1) |x[n]|^2 = (1/N) Σ (k=0 to N-1) |X[k]|^2
```
