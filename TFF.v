module TFF(

    input  reset, T, En, Default,
    output Y, 
    output X, 
    output notX

    );
    
    assign T = 1'b1;
    assign Y = T^X;
    
    DFF utt(
    
    .clk(En),
    .reset(reset),
    .Default(Default),
    .Q(X),
    .D(Y)
    
    );
    

    
endmodule
