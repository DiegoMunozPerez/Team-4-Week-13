module top(

    input btnC, btnU,
    output [6:0] led

);
    wire clock;
    wire reset;
    
    assign clock = btnC;
    assign reset = btnU;
    Ripple i(
    
    .clk(clock),
    .reset(reset),
    .Q(led[2:0])
    
    );
    
    
    Module d(
    
    .clk(clock),
    .reset(reset),
    .Q(led[5:3]),
    .Y(led[6])
    
    
    );


endmodule