module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    wire [24:0] conc1;
    wire [24:0] conc2;
    assign conc1={{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign conc2={5{a,b,c,d,e}};
    assign out=~(conc1^conc2);

endmodule
