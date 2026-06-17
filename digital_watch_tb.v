`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:57 06/17/2026
// Design Name:   digital_watch
// Module Name:   /home/mohangandeti/Downloads/VLSI_RN/digital_watch/digital_watch_tb.v
// Project Name:  digital_watch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: digital_watch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module digital_watch_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [4:0] hours;
	wire [5:0] minutes;
	wire [5:0] seconds;

	// Instantiate the Unit Under Test (UUT)
	digital_watch uut (
		.clk(clk), 
		.rst(rst), 
		.hours(hours), 
		.minutes(minutes), 
		.seconds(seconds)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
always #5 clk = ~clk;

task reset;
 begin
    @(negedge clk);
	    rst = 1'b0;
	 @(negedge clk);
	     rst = 1'b1;
  end
 endtask
 
 initial
   begin
	  reset;
	 end
      
endmodule

