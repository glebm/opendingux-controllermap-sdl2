# SDL2 ControllerMap for OpenDingux (RG350, GCW0)

SDL2 ControllerMap is a utility for building [SDL2 Controller Mappings].

## Use

Press the buttons as they are highlighted.

**NOTE:** The visual aid is similar to an XBox controller, which has A and B
reversed compared to RG350/GCW0.

To skip a button that your device doesn't have, press a button that you've
already bound.

When the thumbstick arrow shows up, move the stick in this order:
left, right, up, down.

The resulting `SDL_GAMECONTROLLERCONFIG` is saved to `/tmp/controllermap`.

To see more details, run from the terminal via SSH.

## Build

Pre-requisites: `cmake mksquashfs`.

~~~bash
BUILDROOT=/path/to/buildroot ./build-opendingux.sh
~~~

The OPK will be at `build/controllermap-sdl2.opk`.

[SDL2 Controller Mappings]: https://wiki.libsdl.org/CategoryGameController
