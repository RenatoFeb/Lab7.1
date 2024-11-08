`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 06:52:57 PM
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

reg RAW, CLK;
wire CLEAN;
    
debouncer dut (
    .RAW(RAW),
    .CLK(CLK),
    .CLEAN(CLEAN)
);
    
always begin
    #5 CLK = ~CLK;
end
    
initial begin

    CLK = 0;

    RAW = 0;
    
    #10; RAW = 1; 
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    
     #10; RAW = 1; 
     #10; RAW = 1;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    
     #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
   
     #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
       
     #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;

     #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
    #10; RAW = 0;
    #10; RAW = 0;

     #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
    #10; RAW = 0;
     
     #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     
     #10; RAW = 0;
     
       #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     
     
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
    #10; RAW = 0;
     
      #10; RAW = 1; 
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
     #10; RAW = 1;
    
    
end

endmodule
