#!/usr/bin/env bash
docker run -it --rm --network host \
-v ${XAUTHORITY}:${XAUTHORITY} \
-e DISPLAY \
-e VIDEO_HEIGHT \
-e VIDEO_SOURCE \
-e VIDEO_WIDTH \
-e XAUTHORITY \
claudiofahey/object_detector_app:0.1 $@
