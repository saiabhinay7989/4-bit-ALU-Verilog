`timescale 1ns/1ps
module tb_alu_4_bit;
reg [3:0] a;
reg [3:0] b;
reg [2:0] select;
 wire [3:0] Result;
 wire carry_borrow;
 wire zero;
 
 alu_4_bit dut(
 .a(a),
 .b(b),
 .select(select),
 .Result(Result),
 .carry_borrow(carry_borrow),
 .zero(zero)
 );
 initial begin
 $dumpfile("alu_wave.vcd");
 $dumpvars(0,tb_alu_4_bit);
 $monitor("Time=%0t | sel=%b|a=%d|b=%d|Result=%d|carry/borrow=%b|zero=%b", $time,select,a,b,Result,carry_borrow,zero);
 select=3'b000;a=4'd5;b=4'd3;
 #10;
 select=3'b000;a=4'd15;b=4'd1;
 #10;
 select=3'b001;a=4'd2;b=4'd1;
 #10;
  select=3'b001;a=4'd3;b=4'd4;
 #10;
  select=3'b010;a=4'd2;b=4'd1;
 #10;
  select=3'b011;a=4'd2;b=4'd1;
 #10;
  select=3'b100;a=4'd2;b=4'd1;
 
 
 $finish;
 
 end
 endmodule
 
