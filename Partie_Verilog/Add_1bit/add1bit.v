module add1bit (a, b, r, s, ret);
    input a;
    input b;
    input r;
    output s;
    output ret;

  assign s = a ^ b ^ r;
  assign ret = (a & b) | (a & r) | (b & r);

endmodule
