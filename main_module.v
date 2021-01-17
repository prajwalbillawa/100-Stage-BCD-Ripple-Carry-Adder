module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    genvar i;
    wire [99:0] w;
    
    bcd_fadd i0(a[3:0],b[3:0],cin,w[0],sum[3:0]);
    
    generate
        for(i = 1 ; i < 100 ; i=i+1) begin : name
            bcd_fadd in(a[4 * i +: 4],b[4 * i +: 4],w[i-1],w[i],sum[4 * i +: 4]); 
        end
    endgenerate
    
    assign cout = w[99];

endmodule
