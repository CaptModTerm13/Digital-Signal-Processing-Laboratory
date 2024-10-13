### Experiment 8: Inverse Discrete Fourier Transform (IDFT)
The **Inverse Discrete Fourier Transform (IDFT)** is a mathematical operation used to reconstruct a finite sequence of numbers from its Discrete Fourier Transform (DFT) coefficients. It's essentially the reverse process of the DFT.

#### Mathematical Definition

Given a sequence of `N` complex DFT coefficients, `X[k]`, where `k = 0, 1, ..., N-1`, the IDFT is defined as:

```
x[n] = (1/N) * ∑_{k=0}^{N-1} X[k] * e^(j*2π*n*k/N)
```

where:

* `x[n]` is the reconstructed sequence at index `n`.
* `j` is the imaginary unit (√-1).
* `n` and `k` are indices.

#### Relationship to DFT

The IDFT is the inverse operation of the DFT. This means that if you take the DFT of a sequence `x[n]` and then apply the IDFT to the resulting DFT coefficients, you will get back the original sequence `x[n]`.

#### Properties of IDFT

* **Linearity:** The IDFT is a linear operation.
* **Conjugation:** The IDFT of the complex conjugate of a sequence is the complex conjugate of the IDFT of the original sequence.
* **Time Reversal:** Reversing the frequency index of a sequence corresponds to reversing the time index of its IDFT.
* **Convolution Theorem:** The IDFT of the product of two sequences is the convolution of their individual IDFTs.
* **Parseval's Theorem:** The sum of the squared magnitudes of the IDFT coefficients is equal to the sum of the squared magnitudes of the original sequence.

#### Applications of IDFT

* **Signal Reconstruction:** Recovering a time-domain signal from its frequency-domain representation.
* **Filtering:** Applying filters to a signal in the frequency domain and then using the IDFT to obtain the filtered time-domain signal.
* **Image Processing:** Image reconstruction from frequency-domain data.
* **Communications:** Demodulation of signals.
