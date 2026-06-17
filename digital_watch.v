`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:46 06/17/2026 
// Design Name: 
// Module Name:    digital_watch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module digital_watch( input clk,rst, output reg [4:0]hours , output reg [5:0]minutes,seconds
    );
always@(posedge clk)
   begin
	   if( !rst)
		   begin
			   hours   <= 5'b00000;
				minutes <= 6'b000000;
				seconds <= 6'b000000;
			end
		else
		   begin
			   if(seconds ==6'd59)
				   begin
					   seconds <= 6'b000000;
					      if(minutes == 6'd59)
							    begin
								    minutes <= 6'b000000;
									   if(hours == 5'd23)
										    hours <= 5'b00000;
										else
										    hours <= hours + 5'd1;
									end
							else
							    minutes <= minutes + 6'd1;
					end
				else
				     seconds <= seconds +6'd1;
			end
	end
        		
	

endmodule
