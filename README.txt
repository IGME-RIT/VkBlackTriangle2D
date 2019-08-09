In this tutorail we introduce pipelines
and shaders. We include a new function
called prepaere_pipeline, and then we use
the pipeline in the build_swapchain_cmds
function. The positions of the vertices
are set inside the vertex shader, called
triangle.vert. In the destructor of demo,
we destroy the pipeline data that we created.
Also, in the build_swapchain_cmds function,
we introduce how to use Viewports and Scissors.
