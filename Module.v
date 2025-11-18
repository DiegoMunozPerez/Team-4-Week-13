module Module(

    input [2:0] A,
    input [2:0] B,
    input reset,
    input clk,
    input [2:0] C_in,
    input internal_reset,
    output [2:0] Q,
    output [2:0] C_out,
    output [2:0] y,
    output Y

    );
    
    wire [2:0] bit;
    wire r;
    
    assign r = reset | internal_reset;
    
    assign bit = Q;
    assign A = Q;
    
    fulladder g(
    
    .A(A[0]),
    .B(1'b1),
    .C_in(1'b0),
    .C_out(C_out[0]),
    .Y(y[0])
    
    );
    
    
    DFF h(
    
    .Q(Q[0]),
    .D(y[0]),
    .clk(clk),
    .reset(r)
    
    );
    
    fulladder k(
    
    .A(A[1]),
    .B(1'b0),
    .C_in(C_out[0]),
    .C_out(C_out[1]),
    .Y(y[1])
    
    );
    
      DFF l(
    
    .Q(Q[1]),
    .D(y[1]),
    .clk(clk),
    .reset(r)
    
    );
        fulladder p(
    
    .A(A[2]),
    .B(1'b0),
    .C_in(C_out[1]),
    .C_out(C_out[2]),
    .Y(y[2])
    
    );
    
       DFF q(
    
    .Q(Q[2]),
    .D(y[2]),
    .clk(clk),
    .reset(r)
    
    );
    
    
    TFF dsgtrh(
    
    .En(internal_reset),
    .X(Y)
    
    );
    
   
    assign internal_reset = bit[2] & bit[1] & ~bit[0];
    
endmodule
