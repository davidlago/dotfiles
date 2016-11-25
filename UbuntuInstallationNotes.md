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
  and set `ControllerMode = bredr`
