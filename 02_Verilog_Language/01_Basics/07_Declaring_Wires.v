`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire one_wire;
    wire two_wire_a;
    wire two_wire_b;
assign out_n=~one_wire;
    assign out=one_wire;
    assign one_wire=two_wire_a | two_wire_b;
    assign two_wire_a= a&b;
    assign two_wire_b= c&d;
    
endmodule
