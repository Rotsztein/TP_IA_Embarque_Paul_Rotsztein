`timescale 1ns / 1ps
`include "add8bit.v"

module stimulus;
  // Inputs
  reg [7:0] a;
  reg [7:0] b;
  // Outputs
  wire [15:0] sum;
  // Instantiate the Unit Under Test (UUT)
  add8bit uut (
    .a(a),
    .b(b),
    .sum(sum)
  );

  initial begin
    $dumpfile("add8bit.vcd");
    $dumpvars(0, stimulus);
    // Initialize Inputs
    a = 8'b00000000;
    b = 8'b00000000;

    #20 a = 8'b11111111;
    #20 b = 8'b11111111;

    #20 b = 8'b00000000;
    #20 a = 8'b11111111;
    
    #20 a = 8'b10000000;
    #20 b = 8'b00000001;

    #20 a = 8'b10000000;
    #20 b = 8'b10000000;
    #40;
  end  

  initial begin
    $monitor("t=%3d a=%b,b=%b,sum=%b\n", $time, a, b, sum);
  end
endmodule