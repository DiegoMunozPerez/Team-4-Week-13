module Ripple (

    input clk,
    input reset,
    output [2:0] Q
    
        );
    
   TFF uut(
   
   .En(clk),
   .reset(reset),
   .X(Q[0])
   
   );
   
   
   wire z;
   
  assign z = Q[0];
  
  
  TFF ut(
  
    .En(z),
    .reset(reset),
    .X(Q[1])
  
  
  );
    wire j;
    assign j = Q[1];
    
    
  TFF u(
  
    .En(j),
    .reset(reset),
    .X(Q[2])
  
  
  );
  
  
   
   

endmodule 