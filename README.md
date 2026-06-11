# Design and Synthesis of Majority Logic Gate Based MAC Units with FPGA and ASIC Evaluation

## Overview

This project presents the design and synthesis of Majority Logic Gate (MLG) based Multiply-Accumulate (MAC) units for digital signal processing applications. The work focuses on implementing 4×4 and 8×8 MAC architectures using Majority Logic Gate based full adders and evaluating their performance on both FPGA and ASIC design flows.

The designs were developed using Verilog HDL, verified through simulation, synthesized on Xilinx Vivado for FPGA evaluation, and implemented using the SKY130 standard cell library through Yosys and OpenROAD for ASIC evaluation.

---

## Published Research Paper

**Title:** Design and Synthesis of Majority Logic Gate Based MAC Units with FPGA and ASIC Evaluation

**Publication:** IRJET (International Research Journal of Engineering and Technology)

Paper available in:

```text
Paper/IRJET-V13I04127.pdf
```

---

## Project Architecture

The overall architecture of the proposed MAC unit is available in:

```text
Architecture/MLG_MAC_Architecture.png
```

---

## RTL Design

The repository contains complete Verilog HDL implementations for:

### 4×4 MAC Unit

* Majority Logic Gate (MG)
* QCA Full Adder
* Array Multiplier
* Register Unit
* MAC Architecture
* Ladner-Fischer Adder Based Design

### 8×8 MAC Unit

* Majority Logic Gate (MG)
* QCA Full Adder
* 16-bit MLG Adder
* Array Multiplier
* Register Unit
* MAC Architecture

---

## Functional Verification

### FPGA Functional Verification

* Waveforms/4x4_functional_verification.png
* Waveforms/8x8_functional_verification.png

### ASIC Functional Verification

* Waveforms/4x4_asic_verification.png
* Waveforms/8x8_asic_verification.png

Simulation was performed using Icarus Verilog.

---

## FPGA Implementation

### Tool

* Xilinx Vivado
* Device: XC7Z010CLG400-1

### FPGA Results

| Design  | LUTs | Delay (ns) | Power (W) |
| ------- | ---- | ---------- | --------- |
| 4×4 MAC | 26   | 2.431      | 0.114     |
| 8×8 MAC | 93   | 2.566      | 0.111     |

Detailed reports are available in:

```text
FPGA_Results/
```

---

## ASIC Implementation

### Tool Flow

* Yosys Synthesis
* OpenROAD Physical Analysis
* SKY130 Standard Cell Library

### ASIC Results

| Design  | Area (µm²) | Delay (ns) | Power (µW) |
| ------- | ---------- | ---------- | ---------- |
| 4×4 MAC | 997        | 3.35       | 107        |
| 8×8 MAC | 5762       | 6.50       | 365        |

Detailed reports are available in:

```text
ASIC_Results/
```

---

## Tools Used

* Verilog HDL
* Icarus Verilog
* Xilinx Vivado
* Yosys
* OpenROAD
* OpenLane
* SKY130 Standard Cell Library

---

## Repository Structure

```text
RTL/
Architecture/
Waveforms/
FPGA_Results/
ASIC_Results/
Paper/
README.md
```

---

## Authors

Dinesh Vardhan Dundi

Electronics and Communication Engineering

Research Interests:

* VLSI Design
* Digital IC Design
* FPGA Design
* ASIC Design
* Hardware Accelerators
* DSP Architectures
