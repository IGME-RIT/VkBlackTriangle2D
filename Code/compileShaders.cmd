..\Bin\glslangValidator.exe -V triangle.vert -o triangle.vert.spv
..\Bin\glslangValidator.exe -V triangle.frag -o triangle.frag.spv
..\Bin\spirv-opt --strip-debug triangle.vert.spv -o triangle2.vert.spv
..\Bin\spirv-opt --strip-debug triangle.frag.spv -o triangle2.frag.spv
bin2hex --i triangle2.vert.spv --o triangle.vert.inc
bin2hex --i triangle2.frag.spv --o triangle.frag.inc
del triangle.vert.spv
del triangle.frag.spv
del triangle2.vert.spv
del triangle2.frag.spv
pause