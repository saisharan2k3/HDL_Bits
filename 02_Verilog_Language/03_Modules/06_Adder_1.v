module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c0,cout;
    add16 add16_1 (a[15:0],b[15:0],1'b0,sum[15:0],c0);
    add16 add16_2 (a[31:16],b[31:16],c0,sum[31:16],cout);
    

endmodule
