# 1:4 Demultiplexer using Verilog

## Overview

This project implements a **1:4 Demultiplexer (DEMUX)** using Verilog HDL.

A 1:4 DEMUX accepts one input signal and routes it to one of four outputs depending on the values of the two select lines.

---

## Block Diagram

```
          +----------------+
Input --->|                |
          |    1:4 DEMUX   |
 S1,S0 -->|                |
          +----------------+
            | | | |
           Y0 Y1 Y2 Y3
```

---

## Truth Table

| S1 | S0 | Y0 | Y1 | Y2 | Y3 |
|----|----|----|----|----|----|
| 0 | 0 | D | 0 | 0 | 0 |
| 0 | 1 | 0 | D | 0 | 0 |
| 1 | 0 | 0 | 0 | D | 0 |
| 1 | 1 | 0 | 0 | 0 | D |

---

## Files

| File | Description |
|------|-------------|
| demux1to4.v | Verilog design |
| demux1to4_tb.v | Testbench |
| simulation/ | Simulation files |
| README.md | Documentation |

---

## Software Used

- Verilog HDL
- Icarus Verilog
- GTKWave

---

## Compilation

```bash
iverilog -o demux demux1to4.v demux1to4_tb.v
vvp demux
gtkwave demux.vcd
```

---

## Expected Result

Only one output becomes equal to the input according to the select lines.

---

## Author

Your Name