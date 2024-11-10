## FIR Filters
**Fundamental Concepts**

* **Frequency Response:** A filter's frequency response characterizes how it affects input signals at different frequencies. It's typically represented by a magnitude response (gain) and a phase response (phase shift).
* **Impulse Response:** The impulse response of a filter is its output when the input is a unit impulse. It's a fundamental property that uniquely defines the filter's behavior.
* **Transfer Function:** The transfer function, H(z), relates the output of a filter to its input in the z-domain. It's often used to analyze and design filters.

## Types of Filters

### Window Functions
![image](https://github.com/user-attachments/assets/bf52b904-5e8d-4640-96e9-7a3db7f93f43)

### Filters Functions
![image](https://github.com/user-attachments/assets/182a3f66-2445-45a5-93b5-333218e5a37b)



1. **Low-Pass Filter (LPF):**
   * **Frequency Response:** Passes low-frequency signals and attenuates high-frequency signals.
   * **Applications:** Audio systems (treble control), smoothing signals, anti-aliasing filters.


2. **High-Pass Filter (HPF):**
   * **Frequency Response:** Passes high-frequency signals and attenuates low-frequency signals.
   * **Applications:** Audio systems (bass control), removing DC offset, noise reduction.
 

3. **Band-Pass Filter (BPF):**
   * **Frequency Response:** Passes a specific range of frequencies and attenuates frequencies outside this range.
   * **Applications:** Radio receivers, audio equalizers, selecting specific frequency bands.
 

4. **Band-Stop Filter (BSF) or Notch Filter:**
   * **Frequency Response:** Attenuates a specific range of frequencies and passes frequencies outside this range.
   * **Applications:** Noise reduction (e.g., power line hum), removing specific interference frequencies.
 
**Filter Design Techniques**

* **Analog Filter Design:**
   * Passive filters (RC, LC)
   * Active filters (op-amp-based)
   * Switched-capacitor filters
* **Digital Filter Design:**
   * Finite Impulse Response (FIR) filters
   * Infinite Impulse Response (IIR) filters
   * Digital Biquad filters

## Observation

### Low Pass filter
![image](https://github.com/user-attachments/assets/845928ee-562a-4cac-9571-e1a6c23f851c)

### High Pass Filter
![image](https://github.com/user-attachments/assets/531ae474-ec9d-43a7-8b38-5758b0ac0cef)

### Band Pass Filter
![image](https://github.com/user-attachments/assets/7154e774-2d90-4bdf-af5c-c811f36128f9)


### Band Stop Filter
![image](https://github.com/user-attachments/assets/13eaf01a-6a5d-4d2c-8279-76c4b580be79)

**Key Considerations in Filter Design**

* **Cut-off Frequency:** The frequency at which the filter's response starts to transition between the passband and stopband.
* **Roll-off Rate:** The steepness of the transition between the passband and stopband.
* **Passband Ripple:** The variation in gain within the passband.
* **Stopband Attenuation:** The amount of attenuation provided in the stopband.
* **Phase Response:** The phase shift introduced by the filter at different frequencies.


