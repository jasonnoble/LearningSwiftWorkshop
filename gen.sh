#!/bin/sh

rm -rf output/
mkdir output/

playground -s abh_playground.css -d output 0_playground_layout.md 1_introducing_swift.md 2_swift_objects.md
