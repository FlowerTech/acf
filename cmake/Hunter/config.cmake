set(EIGEN_CMAKE_ARGS
  BUILD_TESTING=OFF
  HUNTER_INSTALL_LICENSE_FILES=COPYING.MPL2
  CMAKE_Fortran_COMPILER=OFF
)

# https://github.com/openframeworks/openFrameworks/issues/4576
if(RASPBERRY_PI)
  set(OPENCV_CMAKE_ARGS WITH_OPENEXR=OFF)
else()
  set(OPENCV_CMAKE_ARGS "")
endif()

hunter_config(Eigen VERSION ${HUNTER_Eigen_VERSION} CMAKE_ARGS ${EIGEN_CMAKE_ARGS})
hunter_config(OpenCV VERSION ${HUNTER_OpenCV_VERSION} CMAKE_ARGS ${OPENCV_CMAKE_ARGS})
