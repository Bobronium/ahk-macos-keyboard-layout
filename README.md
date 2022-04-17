# Use macOS layout on Windows
These [AutoHotkey](https://www.autohotkey.com/) scripts bring macOS keyboard layout and some shortcuts on Windows.

These scripts are intended to work with Apple keyboards, but nothing should hold you back from using it with any other keyboard, if that's what you want.

#### This project is a part of [bearable-bootcamp-experience](https://github.com/Bobronium/bearable-bootcamp-experience).

# Features
- `CMD/Win` + `Tab` - swithc between windows
- `CMD/Win` + `Q` - quit active application
- `CMD/Win` + `Shift` + `3` - capture entire screen
- `CMD/Win` + `Shift` + `3` - capture screen portion
- `CMD/Win` + `Space` - change the language (**note:** this is deifferent from default macOS behaviour, but I prefer it this way)
- Other than that, `CMD/Win` key is acting exactly like `Ctrl` key would, allowing for
  - `CMD/Win` + `C` to copy
  - `CMD/Win` + `V` to paste
  - `CMD/Win` + `Arrows`
  - and so on...

## Missing features
- It seems to be impossible to replecate `CMD/Win` + `Backspace` behaviour from macOS without terribly breaking something else.


# Installation
- Install [AutoHotkey](https://www.autohotkey.com/) 
- Run the `macOSKeyboardLayout.ahk` and `MagicKeyboardFnKeys.ahk` files

## Autostart
To start scripts automatically, compile them and put in `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp`.

## Troubleshooting
If it doesnt work for applications running with admin permissions, run scripts as admin or set AHK to run with admin privileges ([from StackOverflow](https://stackoverflow.com/a/8457852/723769)). 


# Under the hood
I decided to go with the simplest approach. Instead of remapping every single key manually, I did the following: 
1. Remap `Left CMD/Win` key to `Right Ctrl` key.
2. Bind additional shortcuts (like `CMD/Win` + `Tab`) to `Right Ctrl`

This way actual `Left Ctrl` combinations are remaining intact, and since there's no `Right Ctrl` key on Apple keyboards, nothing is lost.
`Right CMD/Win` key is also remaining intact.

# Contribution
Feel free to create PRs new features or improvements! Just keep in mind that the features should mirror existing functionality from macOS. 

However, if the feature is out of the scope, but you still feel that it's relevant and could improve ones experience, please concider making a PR adding it to the [list below](https://github.com/Bobronium/ahk-macos-keyboard-layout#see-also)

# See also
- [kinto](https://github.com/rbreaves/kinto) - Mac-style shortcut keys for Linux & Windows.
  
  While I'm trying to keep this repo as a small as possible, only adding shortcuts that I personaly crave on Windows, kinto seems to be an all-around-solition for people who constantly work on macOS/Windows/Linux. Never had a chance to used it, but definitely gonna give it a try.

- [mac-precision-touchpad](https://github.com/imbushuo/mac-precision-touchpad) - Windows Precision Touchpad Implementation for Apple MacBook family/Magic Trackpad 2

- [PowerToys](https://github.com/microsoft/PowerToys) - Microsoft PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity.
  
  I used it for it's Spotlight clone on windows and probably something else :)

- [macOS-cursors-for-Windows](https://github.com/antiden/macOS-cursors-for-Windows)

- [QuickLook](https://github.com/QL-Win/QuickLook) — allows to preview the files in macOS manner
