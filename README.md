### ephemeral-toolbox: run containers as in `toolbox` but ephemeral

The idea of this script is to allow quick and easy installation of desktop application under an ephemeral containerized environment.
The need comes up relatively often where I need to install a piece of software that I don't necessarily use regularly - for this purpose I prefer
to install these things inside a container (which fits the SilverBlue philosophy).

However I dislike current toolbox utilities as they create so-called "mutable" containers which means I can leave traces in my system if I forget to delete the toolboxes.

### Solution

Wrap around a single `podman run --rm -it` call which will automatically clean up the container after pid1 dies.

### Usage:

You can just run the script and it will automatically create a container matching your current fedora version, after this you can `sudo dnf install` to your hearts' content.


```
$ etbox-run
$ sudo dnf install -y xeyes
$ xeyes
```

The graphical applications will run under your current graphical session and will use the pipewire/pipewire-pulse daemon to route audio.
