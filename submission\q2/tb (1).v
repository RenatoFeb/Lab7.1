`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 07:12:03 PM
// Design Name: 
// Module Name: tb
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


module tb();

    reg clk, P1, reset;
    
    wire out;

    
    always begin
    #5 clk = ~clk;
    end
    
     seq_detector dut(P1, clk, reset, out );
   
    initial begin
    clk = 0;
    P1 = 0;
    reset = 1;
    
    #15 reset = 0;
    
    #10 P1 = 1;
    #10 P1 = 1;
    #10 P1 = 0;
    #10 P1 = 0;
    
    #20 reset = 1;
    #10 reset = 0;
    
    #10 P1 = 1;
    #10 P1 = 1;
    #10 P1 = 1;
    #10 P1 = 0;
    
    #10 P1 = 1;
    #10 P1 = 0;
    #10 P1 = 1;
    #10 P1 = 0;
    
    #10 reset = 1;
    #10 reset = 0;
    
    #10 P1 = 1;
    #10 P1 = 1;
    #10 P1 = 0;
    #10 P1 = 0;
    #10 P1 = 1;
    end
    
endmodule
