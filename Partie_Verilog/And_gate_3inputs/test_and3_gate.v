`timescale 1ns / 1ps
`include "and3_gate.v"
module stimulus;
	// Inputs
	reg x;
	reg y;
    reg v;
	// Outputs
	wire z;
	// Instantiate the Unit Under Test (UUT)
	and3_gate uut (
		x, 
		y,
        v, 
		z
	);
 
	initial begin
	$dumpfile("test_and3.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		x = 0;
		y = 0;
        v = 0;
 
	#20 x = 1;
	#20 y = 1;
    #20 v = 1;
	#20 y = 0;	
	#20 x = 1;	
    #20 v = 0;  
	#40 ;
 
	end  
 
		initial begin
		 $monitor("t=%3d x=%d,y=%d,v=%d,z=%d \n",$time,x,y,v,z, );
		 end
 
endmodule