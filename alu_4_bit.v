`timescale 1ns/1ps
module alu_4_bit (                              							// dont start with number like 4_bit _adder 
input [3:0] a,
input [3:0] b,
input [2:0]select,
output reg [3:0] Result,													// result should be in reg type bcz u declared in always block 
output reg carry_borrow,
output reg zero																
);

always@(*) begin
Result=4'b000;
carry_borrow=1'b0;
zero=1'b0;

case(select)
3'b000: begin 
{carry_borrow, Result} = {1'b0,a} +{1'b0,b};
 end
3'b001: begin 
 Result = a-b;
 carry_borrow=(a<b);
 end
 
3'b010:begin
Result=a&b;
end

3'b011: begin
 Result=a|b;
end

3'b100: begin 
Result=a^b;
end

default: begin
Result=4'b0000;
carry_borrow=1'b0;
end
endcase

zero=(Result==4'b0000);

end
endmodule 
