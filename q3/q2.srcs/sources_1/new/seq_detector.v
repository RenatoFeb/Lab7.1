`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 07:02:30 PM
// Design Name: 
// Module Name: seq_detector
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

module seq_detector(
   input P1,clk,reset, output reg z
);

parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
reg [1:0] PS,NS;

always@(negedge clk)
   begin
       if(reset)
           PS <= S0;
       else 
           PS <= NS;
   end

always@(posedge clk)
   begin
   
       z = 1'b0;
   
       case(PS)
           S0 : begin
          
               if (P1)
                   NS = S1;
               else
                   NS = S0;
               end
           S1 : begin
               if (P1)
                   NS = S2;
               else
                   NS = S0;
               end
           S2 : begin
               if (!P1)
                   NS = S3;
               else
                   NS = S2;
               end
           S3 : begin
               if (P1) z = 1'b1;
               else NS = S1;    
               NS = S0;
                   
               end
       endcase
   end


endmodule