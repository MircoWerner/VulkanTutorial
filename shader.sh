#!/bin/bash
DELETE_FILES="resources/shaders/*.spv"
for f in $DELETE_FILES
do
  echo "Removing $f..."
  rm $f
done

FILES="resources/shaders/*"
for f in $FILES
do
  echo "Compiling $f..."
  glslc $f -o $f.spv
done