# Introduction to the VSDMemSoC

VSDMemSoC is a small yet powerful RISCV-based SoC. The main purpose of designing such an SoC is to demonstrate the concept of separating the main core and memories of a processor. This would help to make the RISC-V more modular and portable. Here, the instruction memory will be separated

## Problem statement

This work discusses the different aspects of designing a small SoC based on RVMYTH (a RISCV-based processor). This SoC will leverage a 1KB external SRAM as the instruction memory where the program is loaded from. At the end of the day, it is possible to use this small fully open-source and well-documented SoC which has been fabricated under Sky130 technology, for educational purposes.

## What is SoC

An SoC is a single-die chip that has some different IP cores on it. These IPs could vary from microprocessors (completely digital) to 5G broadband modems (completely analog). Here we have a RISC-V core and a 1KB SRAM instruction memory.

## What is RVMYTH

RVMYTH core is a simple RISCV-based CPU, introduced in a workshop by RedwoodEDA and VSD. During a 5-day workshop, students (including middle-schoolers) managed to create a processor from scratch. The workshop used the TLV for faster development. All of the present and future contributions to the IP will be done by students and under open-source licenses.

## What is SRAM

An SRAM is a type of random-access memory (RAM) that uses latching circuitry (flip-flop) to store each bit. It is a volatile memory where data is lost when power is removed. It is typically used for the cache and internal registers of a CPU as it very fast but expensive. The SRAM here is a 1KB 6-transistor type with an 8-bit address bus and 32-bit data bus. We will leverage OpenRAM memory compiler to design such IP core using Sky130 technology.