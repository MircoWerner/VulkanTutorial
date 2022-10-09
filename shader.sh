#!/bin/bash
FILES="resources/shaders/*"
for f in $FILES
do
  echo "Compiling $f..."
  glslc $f -o $f.spv
done