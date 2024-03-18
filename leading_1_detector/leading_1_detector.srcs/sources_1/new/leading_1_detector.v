`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COLLEGE OF VLSI
// Engineer: ABHISHEK KUMAR KUSHWAHA
// 
// Create Date: 18.03.2024 21:53:14
// Design Name: 
// Module Name: leading_1_detector
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


module leading_1_detector(
input [7:0] data_i,
output reg [3:0] lead_one_o

    );
    
   always @(*)
   begin
   lead_one_o = 4'h0;
   
   casex (data_i)
    8'b00000001: lead_one_o = 4'h1;
    8'b0000001x: lead_one_o = 4'h2;
    8'b000001xx: lead_one_o = 4'h3;
    8'b00001xxx: lead_one_o = 4'h4;
    8'b0001xxxx: lead_one_o = 4'h5;
    8'b001xxxxx: lead_one_o = 4'h6;
    8'b01xxxxxx: lead_one_o = 4'h7;
    8'b1xxxxxxx: lead_one_o = 4'h8;
        default: lead_one_o = 4'h0;
   endcase
   end 
endmodule
