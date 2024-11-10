# Linear Convolution of Two Sequences using DSP Kit

## Aim
To perform linear convolution of two sequences using the DSP Kit.

## Theory
Linear convolution is a fundamental operation used extensively in signal processing. It combines two signals to produce a third signal. In digital signal processing (DSP), linear convolution is applied to discrete signals, typically using algorithms optimized for efficiency.

The formula for linear convolution of two discrete signals \( x[n] \) and \( h[n] \) is defined as:


$y[n] = \sum_{k=0}^{M-1} x[k] \cdot h[n-k]$



Where:
- \( x[n] \) is the input signal,
- \( h[n] \) is the filter (impulse response),
- \( y[n] \) is the convolution result.

This operation is commonly used in applications such as:
- Audio processing
- Signal filtering
- Imaging
- Communication systems

## Procedure

### 1. Set Up New CCS Project
- Open **Code Composer Studio (CCS)**.
- Go to **File → New → CCS Project**.
- **Target Selection:** Choose **C674X Floating Point DSP, TMS320C6748**.
- **Connection:** Select **Texas Instruments XDS 100v2 USB Debug Probe**.
- Name the project and click **Finish**.

### 2. Write and Configure the Program
- Write the C code for generating and storing a sine wave and configuring the program to access data at specified memory locations.
- Assign the input signal values \(Xn\) and the filter values \(Hn\) to specific memory addresses:
  - **Xn (Input Signal):** Start at `0x80010000`, with subsequent values at offsets like `0x80010004`, `0x80010008`, and so on.
  - **Hn (Filter):** Start at `0x80011000`, with similar offsets for additional values.
  - Define the lengths of \(Xn\) and \(Hn\) at `0x80012000` and `0x80012004`, respectively.

### 3. Configure Output Location in Code
- In your code, configure the output location to store convolution results at memory addresses starting from `0x80013000`, with each result stored at an offset of `0x04`.

### 4. Save the Program
- Go to **File → Save As** and save the code as `main.c`.
- Remove any default `main.c` program that might already exist in the project.

### 5. Build and Debug the Program
- Select **Debug** to build and load the program on the DSP.
- Once the build is complete, select **Run** to execute the program.

### 6. Execute and Verify Output
- In the **Debug** perspective, click **Resume** to run the program.
- Use the **Memory Browser** in Code Composer Studio to verify the output at the memory location `0x80013000`:
  - Check `0x80013000` for the first convolution result, `0x80013004` for the second result, and so on.
  - Cross-check the output values with the expected convolution results to verify accuracy.

## Results
After following these steps, you should see the convolution results stored in memory at the configured addresses, which can be cross-verified 
with expected values.


![image](https://github.com/user-attachments/assets/05b8f413-1298-4b7b-bc2f-9a9ff117bdac)


## Requirements
- **Code Composer Studio (CCS)**
- **Texas Instruments TMS320C6748 DSP Kit**
- **Texas Instruments XDS 100v2 USB Debug Probe**


