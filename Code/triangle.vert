/*
Copyright 2019
Original authors: Niko Procopi
Written under the supervision of David I. Schwartz, Ph.D., and
supported by a professional development seed grant from the B. Thomas
Golisano College of Computing & Information Sciences
(https://www.rit.edu/gccis) at the Rochester Institute of Technology.
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.
<http://www.gnu.org/licenses/>.

Special Thanks to Exzap from Team Cemu,
he gave me advice on how to optimize Vulkan
graphics, he is working on a Wii U emulator
that utilizes Vulkan, see more at http://cemu.info
*/

#version 450

void main() 
{
	// Procedurally generate a triangle

	// Vertex #0 will be
	// X: 0
	// Y: 0
	// The top left corner

	// Vertex #1 will be
	// X: 0
	// Y: 1
	// The bottom vertex

	// Vertex #0 will be
	// X: 1
	// Y: 0
	// The top right corner

	// Something important to know
	// In OpenGL, the bottom of the
	// screen has a Y of 0, and the
	// top of the screen has a Y of 1

	// Vulkan has an inverted Y axis
	// In Vulkan, the bottom of the
	// screen has a Y of 1, and the
	// top of the screen has a Y of 0

	// There are multiple ways to 
	// change Vulkan's Y axis to be
	// similar to OpenGL, we will
	// cover that in a future tutorial

	// Z and Alpha will always
	// be 0 and 1, 

	gl_Position = vec4(
		gl_VertexIndex / 2, 
		gl_VertexIndex % 2, 
		0, 1);
}