module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout,c0;
    wire [31:0] x;
    assign x={32{sub}}^b[31:0];
    add16 add16_0(a[15:0],x[15:0],sub,sum[15:0],cout);
    add16 add16_1(a[31:16],x[31:16],cout,sum[31:16],c0);

endmodule
