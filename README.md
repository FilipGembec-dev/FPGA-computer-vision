# FPGA-computer-vision
A simple project demonstrating simple neural network principles implemented in an FPGA environment.

This project uses a very simple example and implementation to demonstrate how neural networks and computer vision can be accelerated using FPGAs in order to parallelize the computation process.

The neural network is trained to recognize (in a fixed frame image) a circle, and differentiate it from other shapes, such as a triangle, square, rhomboid shape, etc.

Due to ease of implementation and demonstration, the video interface and image formatting is done by an external SbC(Raspberry pi 4). The formatted data is inputted into the FPGA by a shift register. The details about the input device and its details can be found on: <Link pending>
  
  
