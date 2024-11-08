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

parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
reg [2:0] PS,NS;

always@(negedge clk)
   begin
       if(reset)
           PS <= S0;
       else 
           PS <= NS;
   end

always@(posedge clk)
   begin
      
       case(PS)
           S0 : begin
          
               if (P1)
                   NS <= S1;
               else
                   NS <= S0;
               end
           S1 : begin
               if (P1)
                   NS <= S2;
               else
                   NS <= S0;
               end
           S2 : begin
               if (!P1)
                   NS <= S3;
               else
                   NS <= S2;
               end
           S3 : begin
               if (!P1) 
                    NS <= S4;
               else     
                    NS <= S1;
                   
               end
           S4 : begin
                 
               NS <= S0;
                   
               end               
               
       endcase
   end

    always@(*) begin
    
        case(PS)
            S0: z = 0;
            S1: z = 0;
            S2: z = 0;
            S3: z = 0;
            S4: z = 1;
     
      endcase
    end
    
    

endmodule