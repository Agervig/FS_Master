#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/agervig-pi/sensor_record/src/pylon_camera"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/agervig-pi/sensor_record/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/agervig-pi/sensor_record/install/lib/python3/dist-packages:/home/agervig-pi/sensor_record/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/agervig-pi/sensor_record/build" \
    "/usr/bin/python3" \
    "/home/agervig-pi/sensor_record/src/pylon_camera/setup.py" \
     \
    build --build-base "/home/agervig-pi/sensor_record/build/pylon_camera" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/agervig-pi/sensor_record/install" --install-scripts="/home/agervig-pi/sensor_record/install/bin"
