# TSP-Collection-Launch Scripts
Create custom collections any way you want on your Trimui Smart Pro! Simply use one of the templates provided here (or copy the corresponding `launch.sh` script into your folder) and organize your games any way you'd like.

# What Is It?
The awesome team developing [CrossMix-OS](https://github.com/cizia64/CrossMix-OS/tree/main) came up with a really cool feature for the "Best" tab of the Trimui Smart Pro. You can use ["shortcuts"](https://github.com/cizia64/CrossMix-OS/wiki/Advanced-Guides#trimui-best-collection) that link to roms in the official Roms folder without the need to have multiple copies of the rom on your SD card, and without needing to extract them or format the roms with a certain extension. However, this comes with the limitation that you must place these shortcuts into folders named for the system they belong to (e.g. "SFC" or "PS"). These folders are visible to the user and make organizing your collection impossible.\
I made some small tweaks to their `launch.sh` script to make these shortcuts usuable on the base OS, while also eliminating the need to put these shortcuts into specific folders within your collection. This opens up lots of possibilities for organizing and styling the collection as you please.

# Instructions
The folders here are templates for how your collection should be structured on your SD card. If you already have a collection set up, you may simply copy the `launch.sh` and `config.json` files into your collection folder to get the benefits described here. In the "Roms" folder of either template you will see an example of how to create your own shortcuts: make a simple `.txt` file that contains the path to the rom. The name of the file (minus the extension) is what the user will see. You may place the shortcut directly into the main Roms folder of your collection, or you may place it in a subfolder with any name you choose. Make sure that the corresponding image (placed directly in the "Imgs" folder of the collection) has the exact same name as your shortcut, and you're done!\
<ins>**NOTE:** If you do not use shortcuts, you must still place the roms into folders with names corresponding to the emulator core that should be used to run the rom.</ins>

# Credit
Both [launch.sh](https://github.com/cizia64/CrossMix-OS/blob/main/Best/Free%20Games%20Collection/launch.sh) scripts and the [config.json](https://github.com/cizia64/CrossMix-OS/blob/main/Best/Free%20Games%20Collection/config.json) were adapted from the CrossMix-OS versions.
