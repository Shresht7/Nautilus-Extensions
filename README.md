# Nautilus Extensions and Scripts

Scripts and Extensions for [Nautilus] file manager

## Nautilus Scripts

A nautilus script is an executable shell script placed in the `~/.local/share/nautilus/scripts/` directory. This allows you to extend the functionality of the file-browser to do just about anything.

Scripts are involved by selecting a file (or group of files) and right-clicking to bring up the context-menu. Under the `Scripts` sub-menu, nautilus scripts will be listed allowing you to invoke that script on the selected files.

> [!CAUTION]
> Scripts need to be marked as executable. The `Scripts` sub-menu will not appear in the context-menu unless there is at least one executable script in that folder. To make a script executable either:
> - `right-click` --> `Properties > Permissions > Allow executing file as program`
> `chmod +x name-of-script`
Scripts can be written in any scripting language (so long as you provide the shebang at the top; e.g. `#!/bin/bash`).

Whenever a script is called, Nautilus automatically sets a handful of environment variables that can be used in the scripts:
1. `NAUTILUS_SCRIPT_SELECTED_FILE_PATHS`: Newline-delimited paths for selected files (only if local)
2. `NAUTILUS_SCRIPT_SELECTED_URIS`: Newline-delimited URIs for selected files
3. `NAUTILUS_SCRIPT_CURRENT_URI`: Current location
4. `NAUTILUS_SCRIPT_WINDOW_GEOMETRY`: Position and size of current window

### References 

- https://help.ubuntu.com/community/NautilusScriptsHowto
- https://www.linux.org/threads/working-with-nautilus-scripts.44380/

## Nautilus Extensions

Nautilus extensions are a bit more powerful than scripts. They allow you to create custom context-menu items, add new columns to the list mode display, add custom properties etc. Nautilus extensions often written in Python using the `nautilus-python` package. They live in the `~/.local/share/nautilus-python/extensions/` directory.

### References

- https://gnome.pages.gitlab.gnome.org/nautilus-python/

---

## License

This project is licensed under the [MIT License](./LICENSE)

<!-- LINKS -->
[Nautilus]: https://apps.gnome.org/Nautilus/
