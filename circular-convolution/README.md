### Experiment 4: Circular Convolution

**Circular convolution** is a mathematical operation used to combine two signals, similar to linear convolution. However, unlike linear convolution, circular convolution assumes that the signals are periodic, meaning they repeat indefinitely. This makes it particularly useful in applications involving periodic signals, such as discrete Fourier transform (DFT) and cyclic prefix transmission.

#### Mathematical Definition

Given two periodic signals, `x[n]` and `h[n]`, with a period of `N`, their circular convolution is defined as:

```
y[n] = (x[n] * h[n]) mod N = ∑_{k=0}^{N-1} x[k]h[(n-k) mod N]
```

where:

* `y[n]` is the output signal.
* `*` denotes the circular convolution operation.
* `mod N` represents the modulo operation, which returns the remainder when `n-k` is divided by `N`.
 

#### Properties of Circular Convolution

* **Commutative:** `x[n] * h[n] = h[n] * x[n]`
* **Associative:** `(x[n] * h[n]) * g[n] = x[n] * (h[n] * g[n])`
* **Distributive:** `x[n] * (h[n] + g[n]) = x[n] * h[n] + x[n] * g[n]`
* **Identity:** `x[n] * δ[n] = x[n]`, where `δ[n]` is the unit impulse function.

#### Applications of Circular Convolution

* **DFT:** The DFT can be efficiently computed using circular convolution.
* **Cyclic Prefix Transmission:** In OFDM systems, a cyclic prefix is added to each symbol to mitigate inter-symbol interference. This is essentially circular convolution in the time domain.
* **Filter Design:** Circular convolution can be used to design finite impulse response (FIR) filters.

#### Implementation Methods

Circular convolution can be implemented using:

* **Direct Computation:** Using the mathematical definition.
* **FFT:** Using the fast Fourier transform (FFT) to convert signals to the frequency domain, perform element-wise multiplication, and then convert back to the time domain. This is efficient for large signals.
