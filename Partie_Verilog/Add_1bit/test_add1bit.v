`timescale 1ns / 1ps
`include "add1bit.v"

module stimulus;
  // Inputs
  reg x;
  reg y;
  reg v;
  // Outputs
  wire z;
  wire cout;
  // Instantiate the Unit Under Test (UUT)
  add1bit uut (
    .a(x),
    .b(y),
    .r(v),
    .s(z),
    .ret(cout)
  );

  initial begin
    $dumpfile("add1bit.vcd");
    $dumpvars(0, stimulus);
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
    #40;
  end  

  initial begin
    $monitor("t=%3d a=%d,b=%d,r=%d,s=%d,ret=%d\n", $time, x, y, v, z, cout);
  end
endmodule