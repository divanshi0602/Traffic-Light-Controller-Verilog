# Traffic-Light-Controller-Verilog
A Verilog HDL implementation of a T-Junction Traffic Light Controller that manages signal sequencing for a three-road intersection using timing-based control logic and simulation-based verification.

## Overview

This project implements a T-Junction Traffic Light Controller using Verilog HDL. The controller manages traffic flow at a three-road intersection using a counter-based timing mechanism. Different traffic movements are allowed during specific time intervals, ensuring safe and organized traffic operation.

The design was developed and simulated using EDA Playground and verified through waveform analysis.

---

## Features

* T-Junction traffic management
* Counter-based signal control
* Clock-driven operation
* Automatic signal sequencing
* Reset functionality
* Simulation-based verification

---

## Tools Used

* Verilog HDL
* EDA Playground
* EPWave Waveform Viewer

---

## Working Principle

The controller uses a 5-bit counter that cycles from 0 to 17. Based on the counter value, different traffic signals are activated.

### Phase 1 (Count 0-6)

Active Signals:

* S0
* M0
* M1
* M1_L

This phase allows the main road and left-turn traffic movement.

### Phase 2 (Count 7-11)

Active Signals:

* S1
* M0
* M0_R

This phase allows right-turn traffic movement from the main road.

### Phase 3 (Count 12-16)

Active Signals:

* S2
* S

This phase provides right-of-way to the side road traffic.

After count reaches 17, the counter resets and the sequence repeats continuously.

---

## Design Details

* Implemented using sequential logic
* 5-bit counter for timing control
* Active-high output signals
* Synchronous operation with clock input
* Reset initializes all signals and counter values

---

## Simulation Results

Simulation verifies:

* Correct counter operation
* Proper signal activation
* Accurate phase transitions
* Reset functionality
* Continuous cyclic traffic control

Waveform analysis confirms that the traffic lights follow the intended timing sequence.

---

## Applications

* Traffic signal control systems
* FPGA-based traffic controllers
* Embedded control systems
* Digital design and verification projects

---

## Learning Outcomes

Through this project, the following concepts were explored:

* Verilog HDL programming
* Sequential logic design
* Counter implementation
* Timing-based control systems
* Hardware simulation and verification
* Testbench development

---

## Future Improvements

* Finite State Machine (FSM) implementation
* Four-way intersection support
* Pedestrian crossing signals
* Adaptive traffic control
* FPGA hardware implementation

---

## Author

Divanshi Arora
