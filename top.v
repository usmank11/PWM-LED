`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2022 10:35:34 PM
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    output [3:0] led
    );
    
    
// Creating a coutner
reg [7:0] counter = 0;
always@(posedge clk) begin
    if (counter < 100) 
        counter <= counter + 1; //Count up to 100
    else counter <= 0; // reset
end

// 20% duty cycle
assign led[0] = (counter < 20) ? 1:0; // Turn led to 1 if counter is <20

// 40% duty cycle
assign led[1] = (counter < 40) ? 1:0; // Turn led to 1 if counter is <40

// 60% duty cycle
assign led[2] = (counter < 60) ? 1:0; // Turn led to 1 if counter is <60

// 80% duty cycle
assign led[3] = (counter < 80) ? 1:0; // Turn led to 1 if counter is <80
endmodule
