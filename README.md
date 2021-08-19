# WordPress Child Theme Exports
This simple script grabs all of your WordPress child theme files, ignores your `.git` files and creates a zip file for you to easily import into your WordPress install.

# Directions
1. Place the `exports.sh` file in the root of your child theme directory.
2. Add `exports/` to your .gitignore file (create one if you haven't already).
3. Run `sh -e export.sh` to run the `export.sh` program. Enter your zip file name without the file extension when prompted.
    ```
    % sh -e export.sh
    What is the name of your zip file (without the extension)?
    ENTER_YOUR_ZIP_FILE_NAME
    ```
    The program will create an exports directory if it doesn't exist and place the zip file inside of it.