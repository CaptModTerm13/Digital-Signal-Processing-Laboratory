### Experiment 2: Verification of Sampling Theorem


### Sampling Theorem (Nyquist-Shannon Theorem)

The **Sampling Theorem**, often referred to as the **Nyquist-Shannon Sampling Theorem**, is a fundamental principle in the field of digital signal processing. It defines the conditions under which a continuous signal can be sampled and then perfectly reconstructed from its samples. The theorem states:

---

**If a continuous-time signal contains no frequencies higher than half of the sampling rate, then the signal can be perfectly reconstructed from its discrete samples.**

---

This critical rate, known as the **Nyquist rate**, is twice the highest frequency present in the signal. In mathematical terms:

- Let f(t) be a band-limited continuous signal with maximum frequency f_{max}.
- The signal f(t) can be perfectly reconstructed from its sampled version f[n], taken at regular intervals if the sampling rate f_s satisfies the condition:

`f_s ≥ 2 * f_max`


where:
- \(f_s\) is the sampling rate (number of samples per second).
- \(f_{max}\) is the maximum frequency in the signal (the bandwidth).

This theorem ensures that, given a sufficiently high sampling rate (at least twice the highest frequency component), there will be no loss of information, and the original continuous signal can be exactly reconstructed.

### Key Concepts:

1. **Nyquist Rate**: The minimum sampling rate required to avoid aliasing, which is equal to twice the highest frequency component in the signal, \( 2f_{max} \).

2. **Aliasing**: When the sampling rate is too low (below the Nyquist rate), high-frequency components in the signal can "fold" back into lower frequencies, resulting in distortion. This phenomenon is called aliasing.

3. **Reconstruction**: If a signal is sampled above the Nyquist rate, it can be reconstructed perfectly using interpolation techniques, such as the **sinc interpolation** formula.

### Implications of the Sampling Theorem:

- In **audio** processing, for example, if the maximum frequency a human can hear is about 20 kHz, then the signal must be sampled at least at 40 kHz (which is why the standard CD quality audio sampling rate is 44.1 kHz).
  
- In **digital image processing**, sampling rates affect the resolution and quality of digital images.
