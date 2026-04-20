module top_module (
    input in1,
    input in2,
    input in3,
    output out);
wire in4;
    assign in4=~(in1^in2);
    assign out=in4^in3;
endmodule
