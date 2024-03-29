### RTL Description: Leading 1 Detector

- **Engineer**: Abhishek Kumar Kushwaha
- **Date Created**: March 18, 2024
- **Module Name**: leading_1_detector
- **Company**: College of VLSI
- **Revision**: Revision 0.01 - File Created

#### Overview:
The `leading_1_detector` module is designed to detect the position of the leading 1 in an 8-bit input data stream (`data_i`).

#### Functional Description:
- **Inputs**: 
  - `data_i`: 8-bit input data stream.
- **Outputs**:
  - `lead_one_o`: 4-bit output indicating the position of the leading 1 in the input data stream. (e.g., `lead_one_o = 4'h1` indicates the leading 1 is at bit position 1).
- **Internal Logic**:
  - The module performs pattern matching on the input data to detect the position of the leading 1.
  - A `casex` statement is used to match specific patterns of the input data and assign the corresponding position of the leading 1 to the output `lead_one_o`.
  - If no leading 1 is detected, the output is set to `4'h0`.
- **Dependencies**:
  - This module has no external dependencies.

#### Additional Comments:
- The leading 1 detector provides insight into the positioning of the most significant bit (MSB) that is set to 1 in the input data stream.
- This module can be useful for various applications where knowledge of the leading 1 position is required, such as in encoding or decoding algorithms.





# leading_1_detector
 Design a leading "1" detector circuit for 8-bit bus.
 
 Problem :- If the 8-bit bus value 00101110 then the outputshould be 0x6 since 6th bit represents the leading "1".
 Similarly, If the 8-bit bus is 00001111 then the output should be 0x4.

 Solution :- using Casex, you can Implement this circuit.
