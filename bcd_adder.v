module bcd_fadd {
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
    
    reg [4:0] temp;

    assign sum = temp[3:0];
    assign cout = temp[4];

    always @ (*) begin
    
        temp = a + b + cin;
        if (temp > 9) temp = temp + 6;
        
    end
    
endmodule 
