module top_module (input x, input y, output z);
    wire [3:0]zs;
    A a1(x,y,zs[0]);
    A a2(x,y,zs[1]);
    B b1(x,y,zs[2]);
    B b2(x,y,zs[3]);
    assign z=((zs[3]&zs[2])^(zs[1]|zs[0]));
endmodule

module A(input x,y,output z);
    assign z = (x^y)&x;
endmodule
module B(input x,y,output z);
    assign z = ~(x^y);     
endmodule
