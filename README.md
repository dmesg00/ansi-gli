ANSI-GLI - ANSI Greater & Less in ISO
=====================================

### Introduction:

You've probably noticed that when you switch from an ISO keyboard to an ANSI keyboard, the "<" and ">" keys are missing. When you configure an ANSI keyboard as ISO (for example in Spanish), you can use it in the same way as before, but those symbols are the only ones that you cannot type, so this script will solve the problem.

### How to fix on Windows:

For Windows, you just have to follow the following steps for installation and use.

* **Installation and Use:**

  * Download the package [ansi-gli-2.7.zip](https://github.com/dmesg00/ansi-gli/releases/download/v2.7/ansi-gli-2.7.zip).
  * Unzip the package.
  * Run `ansi-gli_x86.exe` (for Windows 32-bits) or `ansi-gli_x86_64.exe` (for Windows 64-bits).
  * **Optional**: If you want CapsLock disabled, run `ansi-gli-nocapslock_x86.exe` or `ansi-gli-nocapslock_x86_64.exe`.
  * You will see the app icon on the tray. ([Image](https://github.com/dmesg00/ansi-gli/blob/master/images/ansi-gli-tray.png))
  * You can now use the key combinations.

List of combinations:

    - Alt + z = <
    - Alt + x = >
    - AltGr + Shift (Left) + z = <
    - AltGr + Shift (Left) + x = >
    - AltGr + z = <
    - AltGr + x = >
    - Alt + - = ?
    - Alt + + = ¿
    - Alt + c = ? 
    - Alt + v = ¿ 
    - Alt + ' = \
    - Win + Esc = \
    - Win + Alt = AltGr (for keyboards without AltGr key as SK71/SK64)
    - CapsLock = Shift (with nocapslock version)

German/French configuration extra key combinations:

    - Alt + y = <
    - AltGr + Shift (Left) + y = <
    - AltGr + y = <
    - Alt + w = <
    - AltGr + Shift (Left) + w = <
    - AltGr + w = <

### How to fix on Linux:

In most Linux distributions, the keys necessary to type these symbols are already mapped when configuring the keyboard in ISO.  

In my case, using Ubuntu & Debian and setting the keyboard as Spanish ISO, you can write the symbol "<" and ">" with the following combinations natively:

    - AltGr + Shift (Left) + z = <
    - AltGr + Shift (Left) + x = >
    - AltGr + Shift (Right) + z = <
    - AltGr + Shift (Right) + x = >

If you want to add more combinations or the ones mentioned do not work for you, you can follow these steps:

* Install `autokey` for Linux ([from here](https://github.com/autokey/autokey/releases)).
* Install `Python3` (Installed by default on many Linux distributions).
* Install the command `make` (`sudo apt-get install make` on Ubuntu/Debian).
* Download the package [ansi-gli-2.7.zip](https://github.com/dmesg00/ansi-gli/releases/download/v2.7/ansi-gli-2.7.zip).
* Unzip the package.
* Inside the `linux` folder, open a terminal and type the command: `make install`.
* Run `autokey` (It is recommended to configure it to start on login).

Now, you can use the following additional key combinations:

    - Alt + z = <
    - Alt + x = >
    - Alt + w = <
    - Alt + y = <
    - Alt + Esc = \
    - Alt + - = ?
    - Alt + + = ¿
    - Alt + c = ?
    - Alt + v = ¿
    - Win = AltGr (with win-to-altgr_xmodmap.sh script)
    - CapsLock = Shift (with disable-caplock_xmodmap.sh script)

### How to fix on Mac:

I don't know and I don't care.

### How to compile from source:

* First, install [AutoHoyKey](https://www.autohotkey.com/).
* Then, download the source from here.
* In the directory `src`, you have `ansi-gli.ahk`. Right click.
* Choose `Compile Script`. ([Image](https://github.com/dmesg00/ansi-gli/blob/master/images/ansi-gli-compile.png))

### External links:

* [AutoHotKey homepage](https://www.autohotkey.com/)
* [AutoHotKey documentation](https://www.autohotkey.com/docs/AutoHotkey.htm)
* [autokey Github](https://github.com/autokey/autokey)
