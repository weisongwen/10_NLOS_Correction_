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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wenws/10_NLOS_Correction_/src/geometry2/tf2_kdl"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wenws/10_NLOS_Correction_/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wenws/10_NLOS_Correction_/install/lib/python2.7/dist-packages:/home/wenws/10_NLOS_Correction_/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wenws/10_NLOS_Correction_/build" \
    "/usr/bin/python" \
    "/home/wenws/10_NLOS_Correction_/src/geometry2/tf2_kdl/setup.py" \
    build --build-base "/home/wenws/10_NLOS_Correction_/build/geometry2/tf2_kdl" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/wenws/10_NLOS_Correction_/install" --install-scripts="/home/wenws/10_NLOS_Correction_/install/bin"
