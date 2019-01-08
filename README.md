# CampKeys

⌘ Mac-style keyboard shortcuts for [Boot Camp](https://support.apple.com/boot-camp).

## About

> :warning: This is a WIP, GUI is in development! :bowtie:

An open source, non-coder-friendly app for Mac-style Boot Camp shortcuts. Made with :purple_heart: using [AutoHotkey](https://www.autohotkey.com/)!

Contributions and feedback are more than welcome!

### Inspiration

In my discovery of using Boot Camp to play games on my Macbook I was sad to see that not all of the Mac-specific keys were remapped (Mission Control, Launchpad), and there was zero support for Mac-style keyboard shortcuts. Having to re-learn all of the handy shortcuts I had used daily as a Mac developer was a headache. Not to mention that all of the Boot Camp Windows-style shortcuts wouldn't easily carry over to a regular Windows keyboard since they are layed out differently. I decided could NOT give up my Mac keyboard shortcuts!

## Install

### Exe

https://github.com/ashrafhadden/CampKeys/releases/download/v0.1.0/CampKeys.exe

## Supported Keyboard Shortcuts

:information_source: Based on [official Apple documentation](https://support.apple.com/en-us/HT201236) for Mac Keyboard Shortcuts

### (Not included in [docs](https://support.apple.com/en-us/HT201236))

These are shortcuts that aren't included in the official docs, but are still built-in to all Macs

- **F3**: Mission Control _(windows Task View)_
- **F4**: Launchpad _(windows Start Menu)_
- **Command-Q**: Quit
- **Command-Delete**: Delete Line

### Cut, copy, paste, and other common shortcuts

**\* = Supported by Key Remapping**

Ex. Command-C for "copy" is supported because the Left-Command key is remapped to Right-Control, and Control-C is already a Windows shortcut

(All other shortcuts are supported by an AHK [Hotkey](https://www.autohotkey.com/docs/Hotkeys.htm) script)

- \***Command-X**: Cut the selected item and copy it to the Clipboard.
- \***Command-C**: Copy the selected item to the Clipboard. This also works for files in the Finder.
- \***Command-V**: Paste the contents of the Clipboard into the current document or app. This also works for files in the Finder.
- \***Command-Z**: Undo the previous command. You can then press Shift-Command-Z to Redo, reversing the undo command. In some apps, you can undo and redo multiple commands.
- \***Command-A**: Select All items.
- \***Command-F**: Find items in a document or open a Find window.
- \***Command-G**: Find Again: Find the next occurrence of the item previously found. To find the previous occurrence, press Shift-Command-G.
- **Command-H**: Hide the windows of the front app. To view the front app but hide all other apps, press Option-Command-H.
- **Command-M**: Minimize the front window to the Dock. To minimize all windows of the front app, press Option-Command-M.
- \***Command-P**: Print the current document.
- \***Command-S**: Save the current document.
- \***Command-T**: Open a new tab.
- \***Command-W**: Close the front window. To close all windows of the app, press Option-Command-W.
- **Control-Command-Space bar**: Show the Character Viewer _(windows [Character Map](https://en.wikipedia.org/wiki/Character_Map_(Windows)))\_, from which you can choose emoji and other symbols.
- **Control-Command-F:** Use the app in full screen, if supported by the app.
- **Command-Tab**: Switch to the next most recently used app among your open apps.
- \***Shift-Command-N**: Create a new folder in the Finder.
- \***Command-Comma (,)**: Open preferences for the front app.

### Finder and system shortcuts

- **Command-I**: Show the Get Info window for a selected file.
- \***Shift-Command-N**: Create a new folder.
- \***Command-N**: Open a new Finder window.
- **Command-Delete**: Move the selected item to the Trash _(windows Recycle Bin)_.
- **Command-Mission Control**: Show the desktop.

### Document shortcuts

The behavior of these shortcuts may vary with the app you're using.

- **Option-Delete**: Delete the word to the left of the insertion point.
- **Command-Up Arrow**: Move the insertion point to the beginning of the document.
- **Command-Down Arrow**: Move the insertion point to the end of the document.
- **Command-Left Arrow**: Move the insertion point to the beginning of the current line.
- **Command-Right Arrow**: Move the insertion point to the end of the current line.
- **Option-Left Arrow**: Move the insertion point to the beginning of the previous word.
- **Option-Right Arrow**: Move the insertion point to the end of the next word.
- **Shift-Command-Up Arrow**: Select the text between the insertion point and the beginning of the document.
- **Shift-Command-Down Arrow**: Select the text between the insertion point and the end of the document.
- **Shift-Command-Left Arrow**: Select the text between the insertion point and the beginning of the current line.
- **Shift-Command-Right Arrow**: Select the text between the insertion point and the end of the current line.
- \***Shift-Left Arrow**: Extend text selection one character to the left.
- \***Shift-Right Arrow**: Extend text selection one character to the right.
- **Option-Shift-Left Arrow**: Extend text selection to the beginning of the current word, then to the beginning of the following word if pressed again.
- **Option-Shift-Right Arrow**: Extend text selection to the end of the current word, then to the end of the following word if pressed again.
- \***Option-Command-C**: Copy Style: Copy the formathting settings of the selected item to the Clipboard.
- **Option-Command-V**: Paste Style: Apply the copied style to the selected item.
- \***Shift-Command-Minus sign (-)**: Decrease the size of the selected item.
- \***Shift-Command-Plus sign (+)**: Increase the size of the selected item. Command-Equal sign (=) performs the same function.

<!-- ## Extras

In addition to the basic Mac keyboard shortcuts, CampKeys also includes support for the following: -->

<!-- ### Custom Keyboard Shortcuts

Easily create secondary combinations for Mac keyboard shortcuts or even create your very own shortcuts and remappings using a built-in list of common Windows commands and keys. -->
