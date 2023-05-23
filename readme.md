# Print Directory Structure Script

`print_dir` is a bash script that exports a map of the current directory, excluding private/irrelevant files and directories (e.g.,`.env`, `node_modules/*`). 

`print_dir` is useful for concisely communicating a repo architecture to an LLM code assistant. 

The print_dir script is invoked from the command line within the directory you wish to map. On execution, it creates a list of directories and files, including subdirectories. 

The resulting map is then saved in the same directory in a `directory.txt` file, providing a quick and clear overview of your project's structure.

### Exclude Files and Directories

```
node_modules 
.next 
.git 
.env 
mnemonic*
```

## Usage

1. **Clone the repository:**

    Open your terminal or WSL, then run:

    ```bash
    git clone https://github.com/nnnnicholas/print-directory.git
    ```

2. **Copy the script to `/usr/local/bin` directory:**

    This directory is commonly included in the system's PATH. You can copy the script there like so:

    ```bash
    cp print-directory/print_dir.sh /usr/local/bin/print_dir
    ```

    Note: You might need to use `sudo` if you get a permissions error:

    ```bash
    sudo cp print-directory/print_dir.sh /usr/local/bin/print_dir
    ```

    For Windows users running WSL, use your Linux distribution's file system instead of Windows file system. The script should be copied to `/usr/local/bin/` within the WSL environment:

    ```bash
    cp print-directory/print_dir.sh /usr/local/bin/print_dir
    ```

3. **Make the script executable:**

    Run:

    ```bash
    chmod +x /usr/local/bin/print_dir
    ```

    Or with `sudo` if needed:

    ```bash
    sudo chmod +x /usr/local/bin/print_dir
    ```

4. **Run the script inside another directory:**

    Once the script is in your PATH and is executable, you can navigate to any directory you want to export, and run:

    ```bash
    print_dir
    ```

    This will create a `directory.txt` file in your current directory, which contains the directory structure.

The script currently excludes the following:

- Directories: `node_modules`, `.next`, `.git`
- Files: `.env`, and any file that begins with `mnemonic`

## Customizing the Script

If you want to exclude more directories or files, add them to the `EXCLUDE_NAMES` variable in the script, separated by spaces. 

Remember to save your changes and ensure the script is still marked as executable (`chmod +x /usr/local/bin/print_dir`).