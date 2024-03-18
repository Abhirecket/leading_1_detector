`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COLLEGE OF VLSI
// Engineer: ABHISHEK KUMAR KUSHWAHA
// 
// Create Date: 18.03.2024 21:53:35
// Design Name: 
// Module Name: leading_1_detector_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module leading_1_detector_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg [7:0] data_i;
    reg clk_i;
    wire [3:0] lead_one_o;

    // Instantiate the unit under test (UUT)
    leading_1_detector uut (
        .data_i(data_i),
        .lead_one_o(lead_one_o)
    );

    // Clock generation
    always #((CLK_PERIOD)/2) clk_i = ~clk_i;

    // Stimulus
    initial begin
        // Initialize inputs
        data_i = 8'b0;
        clk_i = 1'b0;

        // Apply stimulus
        #10 data_i = 8'b00000001;
        #10 data_i = 8'b00000011;
        #10 data_i = 8'b00000111;
        #10 data_i = 8'b00001111;
        #10 data_i = 8'b00011111;
        #10 data_i = 8'b00111111;
        #10 data_i = 8'b01111111;
        #10 data_i = 8'b11111111;

        // Stop simulation
        #10 $finish;
    end

    // Display simulation results
    always @(posedge clk_i)
        $display("Time = %0t, data_i = %b, lead_one_o = %h", $time, data_i, lead_one_o);

endmodule

