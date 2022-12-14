# FPGA-computer-vision
A simple project demonstrating simple neural network principles implemented in an FPGA environment.

This project uses a very simple example and implementation to demonstrate how neural networks and computer vision can be accelerated using FPGAs in order to parallelize the computation process.

The neural network is trained to recognize (in a fixed frame image) a circle, and differentiate it from other shapes, such as a triangle, square, rhomboid shape, etc.

The FPGA side of this project was done on a Digilent Artix A7 100T FPGA development board carrying a XC7A100TCSG324-1 FPGA chip.
All Verilog code was coded and implemented using Xilinx Vivado IDE.

Due to ease of implementation and demonstration, the video interface and image formatting is done by an external SbC(Raspberry pi 4). The formatted data is inputted into the FPGA by a shift register. 
The details about the input device and its details can be found on: https://github.com/Luka-Dobi/Control-software-for-FPGA-computer-vision
  
The raw verilog file can be found: NeuralNetwork ALU 25.4.2022.srcs => sources_1/new => ModularNeuralNet.v
  
And the XDC file: NeuralNetwork ALU 25.4.2022.srcs => constrs_1/new => io2.xdc 
  
  
