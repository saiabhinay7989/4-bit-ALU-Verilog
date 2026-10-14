# 4-bit ALU using Verilog

## Overview
A 4-bit Arithmetic Logic Unit implemented in Verilog HDL.

## Features
- 4-bit input operands
- 3-bit operation selector
- Addition (ADD)
- Subtraction (SUB)
- Bitwise AND, OR and XOR
- Carry and borrow flag
- Zero flag
- Verilog testbench
- Icarus Verilog simulation
- GTKWave waveform debugging

## Operation Selection

| Select | Operation |
|--------|-----------|
| 000 | ADD |
| 001 | SUB |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101-111 | Default result |

## Tools
- Verilog HDL
- Icarus Verilog
- GTKWave

## Simulation

Compile:
```bash
iverilog -Wall -o alu_sim alu_4_bit.v tb_alu_4_bit.v
