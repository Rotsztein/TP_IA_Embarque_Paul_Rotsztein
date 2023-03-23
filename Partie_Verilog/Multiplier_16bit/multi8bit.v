module multi8bit(a, b, sum);
    input [7:0] a;
    input [7:0] b;
    output [15:0] sum;

assign sum = a * b;

endmodule