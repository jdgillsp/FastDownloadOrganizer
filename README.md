# Fast Download Organizer

A simple, customizable Windows batch script to automatically organize your Downloads folder by file type. This tool helps keep your downloads tidy by sorting files into categorized subfolders (Video, Images, Audio, Installer, PDF, Programming, Archives) based on their extensions.

## Features
- **Automatic Sorting**: Moves files from your Downloads folder into categorized subfolders.
- **Customizable**: Easily add your own file types or custom logic (e.g., work-related keywords).
- **No Installation Needed**: Just run the batch file—no dependencies or setup required.
- **Safe**: Creates destination folders if they don't exist; only moves files, does not delete.

## Screenshots

### Before: The Past

![A cluttered Downloads folder before organization.](the%20past.png)
*The Downloads folder before running Fast Download Organizer.*

### After: The Future

![A perfectly organized Downloads folder with subfolders for Audio, Work, Archives, Programming, Images, Installer, PDF, and Video.](the%20future.png)
*The Downloads folder after running Fast Download Organizer—neat, categorized, and peaceful!*

## How It Works
- The script scans `%USERPROFILE%\Downloads` for files.
- Files are moved to subfolders based on their extension:
  - Video: `mp4, avi, mov, wmv, mkv`
  - Images: `jpg, jpeg, png, gif, bmp`
  - Audio: `mp3, wav, ogg, aac, flac`
  - Installer: `exe, msi`
  - PDF: `pdf`
  - Programming: `py, md, js, html, css, php, java, cpp, c, cs, rb, go, ts, json, xml, yml, yaml, sql, sh, bat, ps1, ipynb`
  - Archives: `zip, rar, 7z, tar, gz`
- You can add your own rules in the clearly marked placeholder section of the script.

## Getting Started
1. **Download** this repository or just the `organize-FastDownloadOrganizer.bat` file.
2. **Double-click** the batch file to run it. (Or right-click and select "Run as administrator" if needed.)
3. The script will organize your Downloads folder and display progress in the command window.

## Customization
- Open `organize-FastDownloadOrganizer.bat` in a text editor.
- Find the section marked `PLACEHOLDER` to add your own keywords or custom logic.
- You can add more file extensions to the relevant groups at the top of the script.

## Requirements
- Windows OS (Tested on Windows 10+)
- No additional dependencies

## License
This project is licensed under the [GNU General Public License v3.0 (GPL-3.0)](LICENSE).

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for improvements, bug fixes, or new features.

## Disclaimer
This script moves files but does not delete them. Please review the script and test with non-critical files if you have customizations.

---

**Enjoy a cleaner, more organized Downloads folder!** 