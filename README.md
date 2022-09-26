# FPGA-computer-vision
A simple project demonstrating simple neural network principles implemented in a FPGA enviroment.

This project uses a very simple example and implementation to demonstrate how neural networks and computer vision, 
can be accelerated using FPGA-s to paralelise the computation process.

The neural network is trained to recognise (in a fixed frame image) a circle, and diferentiate it from other shapes, such as a triangle, square, rombus shape, etc..

Due to ease of implementation and demonstration, the video interface and image formating is done by an external SbC(Raspberry pi 4).
The formated data is inputd in to the FPGA by a shift register. The details about the input device and its details can be found on: <Link pending>
  
  
