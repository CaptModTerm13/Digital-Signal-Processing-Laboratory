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

### Applications of the Sampling Theorem


#### 1. **Digital Audio**
* **CD Audio:** CDs store audio signals as a series of discrete samples. The sampling rate of 44.1 kHz is chosen to adhere to the Nyquist-Shannon sampling theorem, ensuring high-quality audio reproduction.
* **MP3 Encoding:** MP3 compression techniques exploit the human auditory system's sensitivity to certain frequencies and discard redundant information to reduce file size without significantly affecting perceived audio quality. However, the underlying principle of sampling remains crucial.

#### 2. **Image Processing**
* **Digital Cameras:** Cameras capture images by sampling the light intensity at discrete points on the sensor. The resolution (number of pixels) determines the sampling rate, and a higher resolution is necessary to capture finer details.
* **Image Compression:** Techniques like JPEG compression exploit the redundancy in image data and reduce the number of samples while maintaining visual quality.

#### 3. **Telecommunications**
* **Analog-to-Digital Conversion (ADC):** ADCs convert analog signals (like voice or data) into digital signals for transmission over digital networks. The sampling rate of the ADC must be high enough to avoid aliasing, which can introduce distortion.
* **Digital-to-Analog Conversion (DAC):** DACs convert digital signals back into analog form for output devices. The reconstruction filter in a DAC ensures that the reconstructed signal adheres to the sampling theorem.

#### 4. **Medical Imaging**
* **MRI:** Magnetic Resonance Imaging scans acquire data by sampling the magnetic field response of the body. The sampling rate determines the spatial resolution of the image.
* **CT Scans:** Computed Tomography scans use X-rays to create cross-sectional images of the body. The sampling rate of the X-ray detector affects the image quality and resolution.

#### 5. **Control Systems**
* **Data Acquisition:** Control systems often require sampling of physical processes (like temperature, pressure, or position) to monitor and control them. The sampling rate must be fast enough to capture the relevant dynamics of the system.
