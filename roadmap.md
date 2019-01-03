# Roadmap - Full List of Supported Keyboard Shortcuts

> :information_source: Based on [official Apple documentation](https://support.apple.com/en-us/HT201236) for Mac Keyboard Shortcuts.

_\* = Supported by Key Remapping (ex. Command-C is supported because the Left-Command key is remapped to Right-Control, and Control-C is already a Windows shortcut)_

_:question: = Stumped, tried and failed, PR's welcome!_

## Not included in [docs](https://support.apple.com/en-us/HT201236))

> These are shortcuts that aren't included in the official docs, but are still built-in to all Macs

- F3: Mission Control (activates windows Task View)
- F4: Launchpad (windows Start Menu)
- Command-Q: Quit
- Delete Line

## Cut, copy, paste, and other common shortcuts

- [x] \***Command-X**: Cut the selected item and copy it to the Clipboard.
- [x] \***Command-C**: Copy the selected item to the Clipboard. This also works for files in the Finder.
- [x] \***Command-V**: Paste the contents of the Clipboard into the current document or app. This also works for files in the Finder.
- [x] \***Command-Z**: Undo the previous command. You can then press Shift-Command-Z to Redo, reversing the undo command. In some apps, you can undo and redo multiple commands.
- [x] \***Command-A**: Select All items.
- [x] \***Command-F**: Find items in a document or open a Find window.
- [x] \***Command-G**: Find Again: Find the next occurrence of the item previously found. To find the previous occurrence, press Shift-Command-G.
- [x] **Command-H**: Hide the windows of the front app. To view the front app but hide all other apps, press Option-Command-H.
- [x] **Command-M**: Minimize the front window to the Dock. To minimize all windows of the front app, press Option-Command-M.
- [ ] **Command-O**: Open the selected item, or open a dialog to select a file to open.
- [x] \***Command-P**: Print the current document.
- [x] \***Command-S**: Save the current document.
- [x] \***Command-T**: Open a new tab.
- [x] \***Command-W**: Close the front window. To close all windows of the app, press Option-Command-W.
- [ ] **Option-Command-Esc**: Force quit an app.
- [ ] :question:**Command-Space bar**: Show or hide the Spotlight search field. To perform a Spotlight search from a Finder window, press Command-Option-Space bar. (If you use multiple input sources to type in different languages, these shortcuts change input sources instead of showing Spotlight. Learn how to change a conflicting keyboard shortcut.)
- [x] **Control-Command-Space bar**: Show the Character Viewer _(windows [Character Map](https://en.wikipedia.org/wiki/Character_Map_(Windows)))\_, from which you can choose emoji and other symbols.
- [x] **Control-Command-F:** Use the app in full screen, if supported by the app.
- [ ] **Space bar**: Use Quick Look to preview the selected item.
- [x] **Command-Tab**: Switch to the next most recently used app among your open apps.
- [ ] **Shift-Command-5**: In macOS Mojave, take a screenshot or make a screen recording. In earlier macOS versions, use Shift-Command-3 or Shift-Command-4 for screenshots. Learn more about screenshots.
- [x] \***Shift-Command-N**: Create a new folder in the Finder.
- [x] \***Command-Comma (,)**: Open preferences for the front app.

## Sleep, log out, and shut down shortcuts

> :question: Could use help on this one! Potential solutions: https://autohotkey.com/board/topic/94147-catching-keyboards-power-button-intercept-shutdown/

- [ ] **Power button**: Press to turn on your Mac or wake it from sleep. Press and hold for 1.5 seconds to put your Mac to sleep.\_ Continue holding to force your Mac to turn off.
- [ ] **Option-Command-Power button**\* or **Option-Command-Media Eject**: Put your Mac to sleep.
- [ ] **Control-Shift-Power button**\* or **Control-Shift-Media Eject**: Put your displays to sleep.
- [ ] **Control-Power button**\* **Control-Shift-Power button**\* or **Control-Media Eject** : Display a dialog asking whether you want to restart, sleep, or shut down.
- [ ] **Control-Command-Power button**:\* Force your Mac to restart, without prompting to save any open and unsaved documents.
- [ ] **Control-Command-Media Eject**: Quit all apps, then restart your Mac. If any open documents have unsaved changes, you will be asked whether you want to save them.
- [ ] **Control-Option-Command-Power button**\* or **Control-Option-Command-Media Eject**: Quit all apps, then shut down your Mac. If any open documents have unsaved changes, you will be asked whether you want to save them.
- [ ] **Shift-Command-Q**: Log out of your macOS user account. You will be asked to confirm. To log out immediately without confirming, press Option-Shift-Command-Q.

\* Does not apply to the Touch ID sensor.

## Finder and system shortcuts

- [ ] :question:Command-D: Duplicate the selected files.
- [ ] **Command-E**: Eject the selected disk or volume.
- [ ] **Command-F**: Start a Spotlight search in the Finder window.
- [x] **Command-I**: Show the Get Info window for a selected file.
- [ ] **Command-R**: (1) When an alias is selected the Finder: show the original file for the selected alias. (2) In some apps, such as Calendar or Safari, refresh or reload the page. (3) In Software Update preferences, check for software updates again.
- [ ] **Shift-Command-C**: Open the Computer window.
- [ ] **Shift-Command-D**: Open the desktop folder.
- [ ] **Shift-Command-F**: Open the Recents window, showing all of the files you viewed or changed recently.
- [ ] **Shift-Command-G**: Open a Go to Folder window.
- [ ] **Shift-Command-H**: Open the Home folder of the current macOS user account.
- [ ] **Shift-Command-I**: Open iCloud Drive.
- [ ] **Shift-Command-K**: Open the Network window.
- [ ] **Option-Command-L**: Open the Downloads folder.
- [x] \***Shift-Command-N**: Create a new folder.
- [ ] **Shift-Command-O**: Open the Documents folder.
- [ ] **Shift-Command-P**: Show or hide the Preview pane in Finder windows.
- [ ] **Shift-Command-R**: Open the AirDrop window.
- [ ] **Shift-Command-T**: Show or hide the tab bar in Finder windows.
- [ ] Control-Shift-Command-T: Add selected Finder item to the Dock (OS X Mavericks or later)
- [ ] Shift-Command-U: Open the Utilities folder.
- [ ] Option-Command-D: Show or hide the Dock.
- [ ] Control-Command-T: Add the selected item to the sidebar (OS X Mavericks or later).
- [ ] Option-Command-P: Hide or show the path bar in Finder windows.
- [ ] Option-Command-S: Hide or show the Sidebar in Finder windows.
- [ ] Command-Slash (/): Hide or show the status bar in Finder windows.
- [ ] Command-J: Show View Options.
- [ ] Command-K: Open the Connect to Server window.
- [ ] Command-L: Make an alias of the selected item.
- [x] \*Command-N: Open a new Finder window.
- [ ] Option-Command-N: Create a new Smart Folder.
- [ ] Command-T: Show or hide the tab bar when a single tab is open in the current Finder window.
- [ ] Option-Command-T: Show or hide the toolbar when a single tab is open in the current Finder window.
- [ ] Option-Command-V: Move: Move the files in the Clipboard from their original location to the current location.
- [ ] Command-Y: Use Quick Look to preview the selected files.
- [ ] Option-Command-Y: View a Quick Look slideshow of the selected files.
- [ ] Command-1: View the items in the Finder window as icons.
- [ ] Command-2: View the items in a Finder window as a list.
- [ ] Command-3: View the items in a Finder window in columns.
- [ ] Command-4: View the items in a Finder window with Cover Flow.
- [ ] Command-Left Bracket ([): Go to the previous folder.
- [ ] Command-Right Bracket (]): Go to the next folder.
- [ ] Command-Up Arrow: Open the folder that contains the current folder.
- [ ] Command-Control-Up Arrow: Open the folder that contains the current folder in a new window.
- [ ] Command-Down Arrow: Open the selected item.
- [ ] Right Arrow: Open the selected folder. This works only when in list view.
- [ ] Left Arrow: Close the selected folder. This works only when in list view.
- [x] Command-Delete: Move the selected item to the Trash.
- [ ] Shift-Command-Delete: Empty the Trash.
- [ ] Option-Shift-Command-Delete: Empty the Trash without confirmation dialog.
- [ ] Command-Brightness Up: Turn target display mode on or off.
- [ ] Command-Brightness Down: Turn video mirroring on or off when your Mac is connected to more than one display.
- [ ] Option-Brightness Up: Open Displays preferences. This works with either Brightness key.
- [ ] Control-Brightness Up or Control-Brightness Down: Change the brightness of your external display, if supported by your display.
- [ ] Option-Shift-Brightness Up or Option-Shift-Brightness Down: Adjust the display brightness in smaller steps. Add the Control key to this shortcut to make the adjustment on your external display, if supported by your display.
- [ ] Option-Mission Control: Open Mission Control preferences.
- [x] Command-Mission Control: Show the desktop.
- [ ] Control-Down Arrow: Show all windows of the front app.
- [ ] Option-Volume Up: Open Sound preferences. This works with any of the volume keys.
- [ ] Option-Shift-Volume Up or Option-Shift-Volume Down: Adjust the sound volume in smaller steps.
- [ ] Option-Keyboard Brightness Up: Open Keyboard preferences. This works with either Keyboard Brightness key.
- [ ] Option-Shift-Keyboard Brightness Up or Option-Shift-Keyboard Brightness Down: Adjust the keyboard brightness in smaller steps.
- [ ] Option key while double-clicking: Open the item in a separate window, then close the original window.
- [ ] Command key while double-clicking: Open a folder in a separate tab or window.
- [ ] Command key while dragging to another volume: Move the dragged item to the other volume, instead of copying it.
- [ ] Option key while dragging: Copy the dragged item. The pointer changes while you drag the item.
- [ ] Option-Command while dragging: Make an alias of the dragged item. The pointer changes while you drag the item.
- [ ] Option-click a disclosure triangle: Open all folders within the selected folder. This works only when in list view.
- [ ] Command-click a window title: See the folders that contain the current folder.
- [ ] Learn how to use Command or Shift to select multiple items in the Finder.
- [ ] Click the Go menu in the Finder menu bar to see shortcuts for opening many commonly used folders, such as Applications, Documents, Downloads, Utilities, and iCloud Drive.

## Document shortcuts

> The behavior of these shortcuts may vary with the app you're using.

- [ ] Command-B: Boldface the selected text, or turn boldfacing on or off.
- [ ] Command-I: Italicize the selected text, or turn italics on or off.
- [ ] Command-K: Add a web link.
- [ ] Command-U: Underline the selected text, or turn underlining on or off.
- [ ] Command-T: Show or hide the Fonts window.
- [ ] Command-D: Select the Desktop folder from within an Open dialog or Save dialog.
- [ ] Control-Command-D: Show or hide the definition of the selected word.
- [ ] Shift-Command-Colon (:): Display the Spelling and Grammar window.
- [ ] Command-Semicolon (;): Find misspelled words in the document.
- [x] Option-Delete: Delete the word to the left of the insertion point.
- [ ] Control-H: Delete the character to the left of the insertion point. Or use Delete.
- [ ] Control-D: Delete the character to the right of the insertion point. Or use Fn-Delete.
- [ ] Fn-Delete: Forward delete on keyboards that don't have a Forward Delete key. Or use Control-D.
- [ ] Control-K: Delete the text between the insertion point and the end of the line or paragraph.
- [ ] Fn-Up Arrow: Page Up: Scroll up one page.
- [ ] Fn-Down Arrow: Page Down: Scroll down one page.
- [ ] Fn-Left Arrow: Home: Scroll to the beginning of a document.
- [ ] Fn-Right Arrow: End: Scroll to the end of a document.
- [x] Command-Up Arrow: Move the insertion point to the beginning of the document.
- [x] Command-Down Arrow: Move the insertion point to the end of the document.
- [x] Command-Left Arrow: Move the insertion point to the beginning of the current line.
- [x] Command-Right Arrow: Move the insertion point to the end of the current line.
- [x] Option-Left Arrow: Move the insertion point to the beginning of the previous word.
- [x] Option-Right Arrow: Move the insertion point to the end of the next word.
- [x] Shift-Command-Up Arrow: Select the text between the insertion point and the beginning of the document.
- [x] Shift-Command-Down Arrow: Select the text between the insertion point and the end of the document.
- [x] Shift-Command-Left Arrow: Select the text between the insertion point and the beginning of the current line.
- [x] Shift-Command-Right Arrow: Select the text between the insertion point and the end of the current line.
- [ ] Shift-Up Arrow: Extend text selection to the nearest character at the same horizontal location on the line above.
- [ ] Shift-Down Arrow: Extend text selection to the nearest character at the same horizontal location on the line below.
- [x] \*Shift-Left Arrow: Extend text selection one character to the left.
- [x] \*Shift-Right Arrow: Extend text selection one character to the right.
- [ ] Option-Shift-Up Arrow: Extend text selection to the beginning of the current paragraph, then to the beginning of the following paragraph if pressed again.
- [ ] Option-Shift-Down Arrow: Extend text selection to the end of the current paragraph, then to the end of the following paragraph if pressed again.
- [x] Option-Shift-Left Arrow: Extend text selection to the beginning of the current word, then to the beginning of the following word if pressed again.
- [x] Option-Shift-Right Arrow: Extend text selection to the end of the current word, then to the end of the following word if pressed again.
- [ ] Control-A: Move to the beginning of the line or paragraph.
- [ ] Control-E: Move to the end of a line or paragraph.
- [ ] Control-F: Move one character forward.
- [ ] Control-B: Move one character backward.
- [ ] Control-L: Center the cursor or selection in the visible area.
- [ ] Control-P: Move up one line.
- [ ] Control-N: Move down one line.
- [ ] Control-O: Insert a new line after the insertion point.
- [ ] Control-T: Swap the character behind the insertion point with the character in front of the insertion point.
- [ ] Command-Left Curly Bracket ({): Left align.
- [ ] Command-Right Curly Bracket (}): Right align.
- [ ] Shift-Command-Vertical bar (|): Center align.
- [ ] Option-Command-F: Go to the search field.
- [ ] Option-Command-T: Show or hide a toolbar in the app.
- [x] \*Option-Command-C: Copy Style: Copy the formathting settings of the selected item to the Clipboard.
- [x] \*Option-Command-V: Paste Style: Apply the copied style to the selected item.
- [ ] Option-Shift-Command-V: Paste and Match Style: Apply the style of the surrounding content to the item pasted within that content.
- [ ] Option-Command-I: Show or hide the inspector window.
- [ ] Shift-Command-P: Page setup: Display a window for selecting document settings.
- [ ] Shift-Command-S: Display the Save As dialog, or duplicate the current document.
- [x] \*Shift-Command-Minus sign (-): Decrease the size of the selected item.
- [x] \*Shift-Command-Plus sign (+): Increase the size of the selected item. Command-Equal sign (=) performs the same function.
- [ ] Shift-Command-Question mark (?): Open the Help menu.

<!-- ## Accessibility shortcuts

## Spotlight shortcuts

## Startup shortcuts

## iTunes shortcuts: Choose Help > Keyboard shortcuts from the menu bar in iTunes.

## Other shortcuts: Choose Apple menu > System Preferences, click Keyboard, then click Shortcuts.

## Type emoji, accents, and symbols -->
