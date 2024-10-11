### Experiment 1: Basic Test Signals
### 1. **Step Signal:**
   A **step signal** is a type of discontinuous signal that jumps from one value to another instantaneously. It is often used to model systems with sudden changes. In mathematical terms, it is represented by the Heaviside function \( u(t) \), 
   where:
   
`u(t) = 1 for t >= 0, 0 for t < 0`

   The step signal is widely used in control systems and circuit analysis, particularly to analyze the response of systems to sudden changes in input.

### 2. **Impulse Signal:**
   The **impulse signal** (also known as the Dirac delta function \( \delta(t) \)) is an idealized signal that has all its energy concentrated at a single point in time (at \( t = 0 \)). The function is zero everywhere except at \( t = 0 \), where it has an infinite value, but the total area under the curve is equal to 1. It is used to model systems with very short pulses of energy, such as switches or triggers in electronics.
  
`δ(t) = ∞ at t = 0, 0 for t ≠ 0`

### 3. **Ramp Signal:**
   A **ramp signal** is a signal that increases linearly with time. It can be thought of as the integral of a step signal. A continuous ramp is given by:
  
   `r(t) = 0 for t < 0, t for t >= 0`

   Ramp signals are used in systems where the output is expected to grow or decrease at a steady rate.

### 4. **Sine Wave:**
   A **sine wave** is a periodic continuous-time signal described by the function:
   `x(t) = A * sin(2 * π * f * t + ϕ)`
   
   where: A is the amplitude, f is the frequency, t is time, and ϕ is the phase shift.

   Sine waves are fundamental in physics and engineering, often used to model oscillatory phenomena such as sound waves, electrical signals, and light waves.

### 5. **Unipolar and Bipolar Square Wave:**
   - A **unipolar square wave** alternates between 0 and a positive value (usually 1) at regular intervals. The signal is symmetric, with a 50% duty cycle (equal time in the high and low states).
   - A **bipolar square wave** alternates between a positive and a negative value, typically 1 and -1, also at regular intervals.
   - 
   Square waves are widely used in digital electronics and clock signals for synchronization purposes.
   Mathematically, a square wave can be represented as a Fourier series, but its basic form in the time domain is:

  `x(t) = A for 0 <= t < T/2, -A for T/2 <= t < T`
  
   where: T is the period of the wave.

### 6. **Sawtooth Wave:**
   A **sawtooth wave** is a non-sinusoidal waveform that rises upward linearly and then drops sharply. It is used in signal processing for its harmonic properties and is common in music synthesis.
   
   `x(t) = (2A/T) * (t - floor(t/T) * T) - A`
   
   where A is the amplitude, T is the period.
### 7. **Exponential Signal:**
   An **exponential signal** is characterized by its exponential growth or decay. The general form is:
   
   `x(t) = A * e^(α * t)`

   where A is the initial amplitude and alpha is the rate of growth or decay:
   - If alpha > 0, the signal grows exponentially.
   - If alpha < 0, the signal decays exponentially.

   Exponential signals are used in modeling systems with natural growth or decay, such as charging and discharging in capacitors or population growth models.
