`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 06:48:55 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer ( input RAW,
                   input CLK,
                   output reg CLEAN);

//internal counter and TC signal
reg [2:0] counter;
wire TC;

//reset and increment counter
always @ (posedge CLK) begin
    if(~RAW)
        counter <= 3'h000;
    else
        counter <= counter + 3'h001;
end

assign TC = (counter==3'b111);

//change output signal
//when counter reaches max
always @ (posedge CLK) begin
    if(~RAW)
        CLEAN <= 1'b0;
    else if (TC)
        CLEAN <= 1'b1;
end

endmodule
