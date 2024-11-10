
## Objective
The objective of this lab is to familiarize students with the input and output ports of the DSP board, focusing on understanding the TMS320C674X DSP CPU architecture and its capabilities.

## Overview


### TMS320C674X DSP CPU Architecture

The TMS320C674X DSP CPU comprises:
- **Eight Functional Units:** These include units dedicated to various operations:
  - **.M1 and .M2:** Perform multiplication operations.
  - **.S1 and .S2:** Handle a variety of arithmetic, logical, and branch functions.
  - **.L1 and .L2:** Execute general arithmetic and logical functions.
  - **.D1 and .D2:** Primarily handle data loading and storing.

- **Register Files:** Two general-purpose register files (A and B), each containing 32 32-bit registers, allowing for a total of 64 registers. These registers support various data types including packed 8-bit, packed 16-bit, 32-bit, 40-bit, and 64-bit data. Data larger than 32 bits are stored across register pairs.

### Multichannel Audio Serial Port (McASP)
The TMS320C674X DSP includes a Multichannel Audio Serial Port (McASP) designed for audio applications. Key features include:
- Flexible clock and frame synchronization with on-chip dividers.
- Up to 16 transmit/receive data pins with configurable serializers.
- Multiple serial data formats, supporting TDM frames with 2–32 time slots per frame and various bit alignment options (e.g., MSB or LSB first).
- DIT (Digital Interface Transmitter) mode with channel status and user data registers.
- Transmit and receive FIFO buffers to accommodate higher sample rates.
- Dynamic adjustment of clock dividers without resetting the McASP.

### Codec (AIC23)
The DSP board includes the **TLV320AIC23** codec, which:
- Converts analog input signals to digital for DSP processing via the **ADC (Analog-to-Digital Converter)**.
- Outputs processed signals back to the analog form using the **DAC (Digital-to-Analog Converter)**.
- Handles all required filtering functions for clean analog output.

## Result
Through this lab exercise, students will gain hands-on experience with the input and output ports of the DSP board and understand the processing flow from analog input to digital processing and back to analog output.

## License
This project is licensed under the MIT License.

## Acknowledgments
- Special thanks to the course instructors and lab facilitators.
