/* Generated by Yosys 0.9+2406 (git sha1 a66200ed, clang 10.0.0 -fPIC -Os) */

module FinalValTest(out);
  wire [3:0] \%out_0 ;
  wire [2:0] lg_0;
  wire [2:0] lg_1;
  wire [1:0] lg_2;
  output [3:0] out;
  assign \%out_0  = lg_1 + lg_0;
  Sum lg_subgraph9 (
    .a(lg_2),
    .b(lg_2),
    .o1(lg_1),
    .o2(lg_0)
  );
  assign lg_2 = 2'h3;
  assign out = \%out_0 ;
endmodule
/* Generated by Yosys 0.9+2406 (git sha1 a66200ed, clang 10.0.0 -fPIC -Os) */

module Sum(a, b, o1, o2);
  wire [2:0] \%o1_0 ;
  wire [2:0] ___F4_0;
  input [1:0] a;
  input [1:0] b;
  wire lg_0;
  wire [2:0] lg_3;
  output [2:0] o1;
  output [2:0] o2;
  assign \%o1_0  = a + b;
  assign lg_3 = a + b;
  assign ___F4_0 = lg_0 + lg_3;
  assign lg_0 = 1'h1;
  assign o2 = ___F4_0;
  assign o1 = \%o1_0 ;
endmodule
