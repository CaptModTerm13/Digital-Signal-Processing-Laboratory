### Experiment 3: Linear Convolution

**Linear convolution** is a mathematical operation used to combine two signals to produce a third signal that represents the output of a linear system when the first signal is the input. It's a fundamental concept in signal processing, used in various applications like audio processing, image filtering, and system analysis.

### Mathematical Definition

Given two signals, `x[n]` and `h[n]`, their linear convolution is defined as:

```
y[n] = x[n] * h[n] = ∑_{k=-∞}^{∞} x[k]h[n-k]
```

where:

* `y[n]` is the output signal.
* `*` denotes the convolution operation.
* `n` is the time index.
* `k` is an index used for summation.


### Properties of Linear Convolution

* **Commutative:** `x[n] * h[n] = h[n] * x[n]`
* **Associative:** `(x[n] * h[n]) * g[n] = x[n] * (h[n] * g[n])`
* **Distributive:** `x[n] * (h[n] + g[n]) = x[n] * h[n] + x[n] * g[n]`
* **Identity:** `x[n] * δ[n] = x[n]`, where `δ[n]` is the unit impulse function.

### Applications of Linear Convolution

* **Filtering:** Removing noise or unwanted components from a signal.
* **System Analysis:** Determining the output of a system given its input and impulse response.
* **Signal Generation:** Creating new signals by convolving existing ones.
* **Image Processing:** Applying filters to enhance or modify images.

### Implementation Methods

Linear convolution can be implemented using various methods, including:

* **Direct Computation:** Using the mathematical definition directly.
* **Fast Fourier Transform (FFT):** Using FFT to convert signals to the frequency domain, perform multiplication, and then convert back to the time domain. This is efficient for large signals.
* **Convolution Theorem:** Leveraging the convolution theorem to perform convolution in the frequency domain.
