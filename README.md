# 1×8 Demultiplexer using Verilog

## Project Overview

This project implements a **1×8 Demultiplexer (DEMUX)** using Verilog HDL.

A 1×8 Demultiplexer routes one input (`D`) to one of eight outputs (`Y0`–`Y7`) based on the values of the three select lines (`S2`, `S1`, `S0`). Only the selected output receives the input value; all other outputs remain `0`.

---

## Truth Table

| S2 | S1 | S0 | Active Output |
|----|----|----|---------------|
| 0 | 0 | 0 | Y0 = D |
| 0 | 0 | 1 | Y1 = D |
| 0 | 1 | 0 | Y2 = D |
| 0 | 1 | 1 | Y3 = D |
| 1 | 0 | 0 | Y4 = D |
| 1 | 0 | 1 | Y5 = D |
| 1 | 1 | 0 | Y6 = D |
| 1 | 1 | 1 | Y7 = D |

---

## Files

- `demux1x8.v` – Verilog design
- `demux1x8_tb.v` – Testbench
- `simulation_result.png` – Simulation waveform
- `README.md` – Project documentation

---

## Software Used

- Icarus Verilog / ModelSim / Vivado Simulator
- GTKWave (optional)

---

## How to Run

### Using Icarus Verilog

```bash
iverilog -o demux demux1x8.v demux1x8_tb.v
vvp demux
```

To generate a waveform:

```bash
iverilog -o demux demux1x8.v demux1x8_tb.v
vvp demux
gtkwave dump.vcd
```

---

## Expected Output

```
Select = 000 → Y = 00000001
Select = 001 → Y = 00000010
Select = 010 → Y = 00000100
Select = 011 → Y = 00001000
Select = 100 → Y = 00010000
Select = 101 → Y = 00100000
Select = 110 → Y = 01000000
Select = 111 → Y = 10000000
```

---

## Applications

- Data routing
- Memory address decoding
- Communication systems
- Digital logic design

---

## Author

Your Name