### Experiment 7: Discrete Fourier Transform (DFT)

The Discrete Fourier Transform (DFT) is a mathematical operation that decomposes a finite sequence of numbers into a sum of complex sinusoids. It's a fundamental tool in digital signal processing, used for analyzing and manipulating signals in the frequency domain.

#### Mathematical Definition

Given a sequence of `N` complex numbers, `x[n]`, where `n = 0, 1, ..., N-1`, the DFT is defined as:

```
X[k] = ∑_{n=0}^{N-1} x[n] * e^(-j*2π*n*k/N)
```

where:

* `X[k]` is the DFT coefficient at frequency `k`.
* `j` is the imaginary unit (√-1).
* `n` and `k` are indices.



#### Properties of DFT

* **Linearity:** DFT is a linear operation.
* **Conjugation:** The DFT of the complex conjugate of a sequence is the complex conjugate of the DFT of the original sequence.
* **Time Reversal:** Reversing the time index of a sequence corresponds to reversing the frequency index of its DFT.
* **Convolution Theorem:** The DFT of the convolution of two sequences is the product of their individual DFTs.
* **Parseval's Theorem:** The sum of the squared magnitudes of the DFT coefficients is equal to the sum of the squared magnitudes of the original sequence.

#### Applications of DFT

* **Frequency Analysis:** Identifying the frequency components of a signal.
* **Filtering:** Removing unwanted frequency components from a signal.
* **Spectrum Analysis:** Analyzing the power spectrum of a signal.
* **Image Processing:** Image filtering, compression, and reconstruction.
* **Communications:** Modulation and demodulation of signals.

#### Fast Fourier Transform (FFT)

The Fast Fourier Transform (FFT) is an efficient algorithm for computing the DFT. It reduces the computational complexity from `O(N^2)` to `O(N log N)`, making it practical for large sequences.
