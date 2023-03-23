`timescale 1ns / 1ps
`include "or_gate.v"
module stimulus;
	// Inputs
	reg x;
	reg y;
    reg v;
	// Outputs
	wire z;
	// Instantiate the Unit Under Test (UUT)
	or_gate uut (
		x, 
		y, 
		z
	);
 
	initial begin
	$dumpfile("test_or.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		x = 0;
		y = 0;
 
	#20 x = 1;
	#20 y = 1;
	#20 y = 0;	
	#20 x = 1;	  
	#40 ;
 
	end  
 
		initial begin
		 $monitor("t=%3d x=%d,y=%d,z=%d \n",$time,x,y,z, );
		 end
 
endmodule