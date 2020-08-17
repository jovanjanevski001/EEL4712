***Lab 1: Introduction to EEL4712 Digital Design Lab***

**Objective:**
- The objective of this lab is to introduce the software and hardware development tools to be used in EEL4712 to design, construct, and test digital circuits. In particular, you will review the use of Quartus software package from Altera for the synthesis of a digitial design. You will be creating an 8-bit counter using the schematic feature of quartus, and a 4-bit ripple-carry adder using VHDL. Both designs will be synthesized in Quartus and simulated in ModelSim. Also, you will be introduced to the DE10-LITE board, the Digilent Analog Discovery (DAD) and to the techniques of using an oscilloscope and logic state analyzer (LSA) to test a constructed digital circuit.

**Required Tools and parts:**
- Quartus Prime, ModelSim, DE10-lite board, DAD


**Pre-lab Requirements:**
1. Read the following documents for further assistance:
   - Tutorials for LSA and Oscilloscope
   - Tutorials for SignalTap II Logic Analyzer
   - Tutorial for ModelSim
   - DE10-lite Board documents
  
2. Schematic capture and simualte an 8-bit counter.
   - Use Quartus graphical editor to create a .bdf file called counter.bdf that contains the design of an 8-bit counter that functions as follows:
     - clr_n   |  ld_n  |  enable   |  Function
        0          
