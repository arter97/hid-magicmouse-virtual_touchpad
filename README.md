# hid-magicmouse-virtual_touchpad

This is a fun little project of mine that converts Apple Magic Mouse's one-finger touch events to two-fingered touchpad-driven events.

This way, the userspace(e.g. libinput or Synaptics) can recognize those events as touchpad events and apply smooth scrolling.

See this [demo](https://twitter.com/arter97/status/1285651689559805958).

## How to install

Do a `make`, and replace `/lib/modules`'s `hid-magicmouse.ko` to this one.

Or, simply do a `rmmod hid_magicmouse; insmod hid-magicmouse.ko`.

## Warning

This is a little rough around the edges.

 * You need to have two fingers on the surface at all times if you don't want it to randomly start scrolling.

 * Upon switching from scrolling to just resting your fingers on the surface, you may find "finger-rejection" is less than ideal.

 * A single tap on the surface will register as a right click. This needs a rejection implementation.

## Enjoy!
