# dwmblocks
Modular status bar for dwm written in c.

# building dwmblocks
This fork of dwmblocks has build-time options to include support for various functions.
| option | description |
------------------------
| `iwd` | Status information from the inet wifi daemon (`iwd`) |
| `battery` | Status information for batteries (sysfs) |
| `ALSA_DEVICE` | Alsa device used to display alsa volume |

Compile-time options can be configured for different machines based on their hostname.
For a laptop with the hostname `my_hostname`, this macro directive configures a few options:
- it sets the `ALSA_DEVICE` to `Master`
- it adds support for `iwd`
- it adds support for battery monitoring through sysfs
```c
#ifdef my_hostname
#define ALSA_DEVICE "Master"
#define iwd
#define battery
#endif
```
Or, you can add these options in CPPFLAGS:
```
CPPFLAGS = -Diwd -D battery [...]
```
