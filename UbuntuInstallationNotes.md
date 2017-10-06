## Ubuntu installation notes
This is a brief document outlining the steps I am taking as I configure my new
laptop to my liking. I'm assuming Ubuntu 16.04 LTS has been successfully
installed, and that the `setup.sh`  and `install.sh` scripts have
been run.

### Adding multi-touch gestures
Follow [this article](https://ineed.coffee/1068/os-x-like-multitouch-gestures-for-macbook-pro-running-ubuntu-12-10/) in order to install and configure touchegg. In case the article
ever gets deleted, here is a summary:

  * Have the workspaces arranged in 1 row:

    ```
    dconf write /org/compiz/profiles/unity/plugins/core/hsize 4
    dconf write /org/compiz/profiles/unity/plugins/core/vsize 1
    ```

  * Disable unity gestures by recompiling with some commented out lines:

    ```
    sudo apt-get build-dep unity
    cd /tmp
    mkdir unity
    cd unity
    apt-get source unity
    ```

  * Then edit `/tmp/unity/unity-*/plugins/unityshell/src/unityshell.cpp` and
  comment all the lines beginning with `gestures_`.

  * Buid unity (this takes a while):

    ```
    cd /tmp/unity/unity-*
    dpkg-buildpackage -us -uc -nc
    cd ..
    sudo dpkg -i *deb
    sudo apt-get -f install
    sudo apt-get autoremove
    ```

  * And prevent new updates to the package:

    ```
    echo "unity hold"|sudo dpkg --set-selections
    ```

  * Download [touchegg source](https://github.com/JoseExposito/touchegg), change
  into its directory and install:

    ```
    sudo apt-get build-dep touchegg
    qmake
    make
    sudo make install
    ```

  * Copy the `touchegg.conf` file in this repository under
  `~/.config/touchegg/touchegg.conf` and the `touchegg.desktop` under `~/.config/autostart/touchegg.desktop`.

  * Log out and back in and try swiping left-right-up-down with four fingers t
  switch workspaces and dragging with a three finger swipe.

### Apps

This is a list of some of the apps I install right away, in no particular order:

  * [Chrome](https://www.google.com/chrome/)
  * Atom ([PlatformIO](http://platformio.org/platformio-ide) flavor, so I can
  use for electronic projects too!)
  * [insync](https://www.insynchq.com/) (sync Google Drive)
  * [Spotify](https://www.spotify.com/us/download/)
  * [Skype](http://www.skype.com/en/download-skype/skype-for-linux/downloading/?type=ubuntu64)

### Misc configuration tweaks

  * Do not use NVIDIA's proprietary driver: It is a battery drain! I couldn't go for longer than
  2 hours on this driver. Follow [this video's instructions](https://www.youtube.com/watch?v=5nGbWE-pvIE)
  that I'm going to summarize here:
    * Add `ppa:graphics-drivers` via the software and updates app
    * Go to Additional Drivers and selec the latest for NVIDIA (387.15 worked for me)
    * Install synaptics package manager
    * From synaptics, install `bumblebee`, `bumblebee-nvidia` and `prime`, and check that `bbswitch`
      is installed
    * Type this into a terminal window: `sudo prime-select intel`
    * Install prime indicator:
      ```
      sudo add-apt-repository ppa:nilarimogard/webupd8
      sudo apt-get update
      sudo apt-get install prime-indicator-plus
      ```
    * Edit `/etc/bumblebee/bumblebee.conf` and change all instances of `nvidia` and `nvidia-current`
      to `nvidia-387` or whichever version you installed, and also change `PMMethod=bbswitch`
    * Restart and pray! An indicator should appear in the top bar with the intel logo that will
      allow you to switch back and forth from Intel to NVIDIA

  * Change terminal profile colors to black background, light grey text,
  white bold text, transparent background and adjust the initial number of rows
  and columns.

  * Install `unity-tweak-tool` and fiddle around with options. Insall
  `gnome-tweak-tool` and map the CAPS LOCK key to CTRL.

  * Useful key bindings:
    * Alt-4 closes window (since the F-keys here are Fn-based)
    * Alt-t opens a terminal

  * Un-check Chrome's advanced setting "Continue running background apps..." to
  prevent annoying error message after every reboot.

  * To be able to pair bluetooth headphones (Bose QC 35) edit `\etc\bluetooth\main.conf`
  and set `ControllerMode = bredr`. Also run this: `sudo apt-get install blueman bluetooth`.
  Not sure if that made a difference, but bluetooth-manager seems to be the better
  tool to manage bluetooth devices.

  * Making the touchscreen work after suspending: I couldn't find a fix for this,
  and it is a bit annoying that after suspending the touchscreen stops working.
  The workaround is to close and open the lid quicly, and resume using the power
  button (weird, I know... but it works!).

  * Disabling touchpad while typing. This is very annoying, since it gets pretty jumpy on the XPS.
  To fix this, add the following to `/usr/share/X11/xorg.conf.d/51-synaptics-quirks.
    ```
    # Disable generic Synaptics device, as we're using
    # "DLL0704:01 06CB:76AE Touchpad"
    # Having multiple touchpad devices running confuses syndaemon
    Section "InputClass"
      Identifier "SynPS/2 Synaptics TouchPad"
      MatchProduct "SynPS/2 Synaptics TouchPad"
      MatchIsTouchpad "on"
      MatchOS "Linux"
      MatchDevicePath "/dev/input/event*"
      Option "Ignore" "on"
    EndSection

    Section "InputClass"
      Identifier "touchpad catchall"
      Driver "synaptics"
      MatchIsTouchpad "on"
      Option "VertTwoFingerScroll" "on"
      Option "HorizTwoFingerScroll" "on"
      MatchDevicePath "/dev/input/event*"
    EndSection
    ```
    and run `syndaemon -i 1 -d -K` on boot (`~/.zshrc` or similar). If for some reason you lose 2
    finger scrolling or tapping, make sure there is just one instance of `syndaemon` running (there are
    other products like `touchpad-indicator` that use it too)