# 1x8 Demultiplexer using Verilog

## Overview

This project implements a 1x8 Demultiplexer using Verilog HDL.

A demultiplexer is a combinational circuit that takes one data input and routes it to one of eight outputs according to three select lines.

## Inputs

- `D` – Data input
- `S0` – Select line 0
- `S1` – Select line 1
- `S2` – Select line 2

## Outputs

- `Y0` – Output 0
- `Y1` – Output 1
- `Y2` – Output 2
- `Y3` – Output 3
- `Y4` – Output 4
- `Y5` – Output 5
- `Y6` – Output 6
- `Y7` – Output 7

## Selection Table

| S2 | S1 | S0 | Selected Output |
|----|----|----|-----------------|
| 0  | 0  | 0  | Y0 |
| 0  | 0  | 1  | Y1 |
| 0  | 1  | 0  | Y2 |
| 0  | 1  | 1  | Y3 |
| 1  | 0  | 0  | Y4 |
| 1  | 0  | 1  | Y5 |
| 1  | 1  | 0  | Y6 |
| 1  | 1  | 1  | Y7 |

## Working

The three select lines determine which output receives the input data.

For example:

S2 S1 S0 = 101

Then:

Y5 = D

All other outputs remain 0.

## Files

- `demux1x8.v` – Verilog design
- `demux1x8_tb.v` – Testbench
- `README.md` – Project documentation
- `simulation_result.png` – Simulation waveform

## Software Used

- Icarus Verilog
- ModelSim / Vivado
- GTKWave

## How to Run

### Compile

```bash
iverilog -o demux demux1x8.v demux1x8_tb.v