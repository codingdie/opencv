if [ ! -d "build" ]; then
  mkdir build
fi
cd build
cmake \
-D CMAKE_BUILD_TYPE=Release \
-D BUILD_opencv_apps=off \
-D BUILD_opencv_dnn=off \
-D BUILD_opencv_java=off \
-D BUILD_opencv_ml=off \
-D BUILD_opencv_ts=off \
-D BUILD_opencv_gapi=off \
-D BUILD_opencv_photo=off \
-D BUILD_opencv_stitching=off \
-D BUILD_opencv_video=on \
-D BUILD_opencv_videoio=on \
-D BUILD_opencv_calib3d=on \
-D BUILD_opencv_flann=on \
-D BUILD_opencv_objdetect=on \
-D BUILD_opencv_features2d=on \
-D BUILD_opencv_highgui=on \
-D BUILD_opencv_imgcodecs=on \
-D BUILD_opencv_imgproc=on \
-D BUILD_opencv_core=on \
-D CMAKE_INSTALL_PREFIX=/usr/local \
..
make -j8
make install