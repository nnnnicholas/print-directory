# Print Directory Structure Script

This repository contains a script, `print_dir.sh`, that can help you export the directory structure of your projects. The script excludes certain directories and files to ensure a clean and relevant output. This can be particularly useful when you're working with AI assistants and you want to give them a sense of the structure of your project without sharing sensitive information or irrelevant files.

## Usage

1. **Clone the repository:**

    Open your terminal or WSL, then run:

    ```bash
    git clone https://github.com/nnnnicholas/print-directory.git
    ```

2. **Copy the script to `/usr/local/bin` directory:**

    This directory is commonly included in the system's PATH. You can copy the script there like so:

    ```bash
    cp print-directory/print_dir.sh /usr/local/bin/
    ```

    Note: You might need to use `sudo` if you get a permissions error:

    ```bash
    sudo cp print-directory/print_dir.sh /usr/local/bin/
    ```

    For Windows users running WSL, use your Linux distribution's file system instead of Windows file system. The script should be copied to `/usr/local/bin/` within the WSL environment:

    ```bash
    cp print-directory/print_dir.sh /usr/local/bin/
    ```

3. **Make the script executable:**

    Run:

    ```bash
    chmod +x /usr/local/bin/print_dir.sh
    ```

    Or with `sudo` if needed:

    ```bash
    sudo chmod +x /usr/local/bin/print_dir.sh
    ```

4. **Run the script inside another directory:**

    Once the script is in your PATH and is executable, you can navigate to any directory you want to export, and run:

    ```bash
    print_dir.sh
    ```

    This will create a `directory.txt` file in your current directory, which contains the directory structure.

The script currently excludes the following:

- Directories: `node_modules`, `.next`, `.git`
- Files: `.env`, and any file that begins with `mnemonic`

## Customizing the Script

If you want to exclude more directories or files, add them to the `EXCLUDE_NAMES` variable in the script, separated by spaces.