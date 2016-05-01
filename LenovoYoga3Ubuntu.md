## Installing Ubuntu in a Lenovo Yoga 3 Pro
This is a brief document outlining the steps I am taking as I configure my new
Yoga Pro 3 to my liking. I'm assuming Ubuntu 16.04 has been successfully
installed, and that the `setup.sh`  and `install.sh` scripts have
been run.

### Adding multi-touch gestures
Follow [this article](https://ineed.coffee/1068/os-x-like-multitouch-gestures-for-macbook-pro-running-ubuntu-12-10/) in order to install and configure touchegg. In case the
article ever gets deleted, here is a summary:

  * Have the workspaces arranged in 1 row:
    ```
    dconf write /org/compiz/profiles/unity/plugins/core/hsize 4
    dconf write /org/compiz/profiles/unity/plugins/core/vsize 1
    ```
  * Disable unity gestures by recompiling with some commented out
  lines:
    ```
    sudo apt-get build-dep unity
    cd /tmp
    mkdir unity
    cd unity
    apt-get source unity
    ```
  * Then edit `/tmp/unity/unity-*/plugins/unityshell/src/unityshell.cpp`
  and comment all the lines beginning with `gestures_`.
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
  * Download [touchegg source](https://github.com/JoseExposito/touchegg), change into its directory and
  install:
    ```
    sudo apt-get build-dep touchegg
    qmake
    make
    sudo make install
    ```
  * Copy the `touchegg.conf` file in this repository under
  `~/.config/touchegg/touchegg.conf` and the `touchegg.desktop`
  under `~/.config/autostart/touchegg.desktop`.
  * Log out and back in and try swiping left-right-up-down with
  four fingers to switch workspaces and dragging with a three
  finger swipe.

### Misc configuration tweaks
  * **Change terminal profile** colors to black background, light grey text,
  white bold text, transparent background and adjust the initial number of rows
  and columns.
