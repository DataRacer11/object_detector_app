# Object-Detector-App

A real-time object recognition application using 
[Google's TensorFlow Object Detection API](https://github.com/tensorflow/models/tree/master/research/object_detection) 
and [OpenCV](http://opencv.org/).

This is based on [Dat Tran's Object Detector App](https://github.com/datitran/object_detector_app)
which is described in this 
[blog](https://towardsdatascience.com/building-a-real-time-object-recognition-app-with-tensorflow-and-opencv-b7a2b4ebdc32).
This version is packaged with Docker to avoid dependency conflicts.

This runs an X11 GUI application in Docker. 
The script `run.sh` mounts the volumes and exports environment variables that
are required for Ubuntu 18.04.

## Getting Started

1. Set parameters for your environment:
```
export VIDEO_SOURCE="rtsp://user:password@ip/cam/realmonitor?channel=1&subtype=0"`
export VIDEO_WIDTH=1280
export VIDEO_HEIGHT=720
```

2. `./run.sh`

## Build

If you want to customize the application, you must build a new Docker image.

1. `docker build . --tag claudiofahey/object_detector_app:0.1`

## Tests

```
docker run --rm claudiofahey/object_detector_app:0.1 pytest -vs utils/
```

## Requirements

- Docker

## Copyright

See [LICENSE](LICENSE) for details.
Copyright (c) 2017 [Dat Tran](http://www.dat-tran.com/).
