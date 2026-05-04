module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout,c1,c2;
    wire [15:0] A,B;
    add16 add16_0(a[15:0],b[15:0],1'b0,sum[15:0],cout);
    add16 add16_1(a[31:16],b[31:16],1'b0,A,c1);
    add16 add16_2(a[31:16],b[31:16],1'b1,B,c2);
    assign sum[31:16]= cout?B:A;

endmodule
