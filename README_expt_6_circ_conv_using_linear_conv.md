### Experiment 6: Circular Convolution using Linear Convolution


**Circular convolution** and **linear convolution** are mathematical operations used in signal processing. While they have distinct definitions, they are closely related, particularly when the signals involved are appropriately zero-padded.

The theory behind finding circular convolution using linear convolution is based on the concept of **zero-padding** and the **relationship between linear and circular convolution**.

**Key points:**

1. **Zero-Padding:**
   - Given two signals, `x[n]` and `h[n]`, of length `M` and `N`, respectively.
   - Zero-pad both signals to a length `L` such that `L ≥ M + N - 1`. This ensures that when the signals are circularly convolved, there won't be any "wrap-around" effects that would distort the result.

2. **Linear Convolution:**
   - Perform linear convolution on the zero-padded signals: `y_zp[n] = x_zp[n] * h_zp[n]`.

3. **Circular Convolution:**
   - The circular convolution of the original signals, `x[n]` and `h[n]`, is simply the first `M + N - 1` samples of the linear convolution result `y_zp[n]`.

**Mathematical Explanation:**

* **Linear Convolution:** The linear convolution of two signals is defined as:
   ```
   y[n] = ∑_{k=-∞}^{∞} x[k]h[n-k]
   ```
* **Circular Convolution:** The circular convolution of two periodic signals of length `N` is defined as:
   ```
   y[n] = (x[n] * h[n]) mod N = ∑_{k=0}^{N-1} x[k]h[(n-k) mod N]
   ```

* **Relationship:**
   - When the signals are zero-padded to a length `L` ≥ `M + N - 1`, the linear convolution effectively captures the circular nature of the operation.
   - The `mod N` operation in circular convolution ensures that the indices stay within the range `0` to `N-1`, preventing "wrap-around" effects.
