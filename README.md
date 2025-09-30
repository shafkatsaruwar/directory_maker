Here’s a structured README for your **Directory Maker** script, styled like the one I wrote for your gradebook project:

---

# Directory Maker Bash Script

## 📌 Overview

**Directory Maker** is a simple interactive Bash script that helps you manage directories and files directly from the terminal.

With a menu-driven interface, you can:

* Create and delete directories
* Create, edit, and delete files
* Search for files inside a directory
* Navigate back to the main menu seamlessly

This project is designed as a hands-on way to practice Bash scripting, loops, and file system operations.

---

## ⚙️ Features

* **Directory Management**

  * Create a new directory
  * Delete the main directory if no longer needed

* **File Management**

  * Create new files inside your directory
  * Edit files by appending content
  * Delete files when no longer required

* **Search Functionality**

  * Search for filenames in the current directory (case-insensitive search with `grep`)

* **Interactive Menus**

  * Nested menu system for directory and file operations
  * Looping structure for continuous interaction until user exits

---

## 🗂️ Project Structure

```
directory_maker.sh    # Main script
README.md             # Documentation
```

---

## 🚀 Getting Started

### Prerequisites

* Bash shell (Linux, macOS, or Git Bash/WSL on Windows)

### Installation

1. Clone or download this repository
2. Make the script executable:

   ```bash
   chmod +x directory_maker.sh
   ```

### Usage

Run the script:

```bash
./directory_maker.sh
```

Follow the prompts to create directories and files.

---

## 🧪 Example Workflow

1. Run the script:

   ```
   ./directory_maker.sh
   ```

2. Create a directory:

   ```
   Name your directory(no spaces)--> myfolder
   myfolder has been created successfully
   ```

3. Create a file inside it:

   ```
   Ok, name your file --> notes.txt
   notes.txt has been created
   ```

4. Edit the file:

   ```
   Please type the name of the file --> notes.txt
   This is what is in your notes.txt file:
   (empty)
   Type some information --> Hello World!
   notes.txt has been edited
   ```

5. Search for a file:

   ```
   Search for a file --> notes
   Search results:
   notes.txt
   ```

6. Delete a file:

   ```
   Do you want to delete notes.txt [1] yes [2] no --> 1
   {notes.txt} has been deleted
   ```

---

## 🔮 Future Improvements

* Add recursive search across subdirectories
* Support renaming files and directories
* Improve input validation (e.g., block invalid characters in names)
* Provide an option to view directory tree structure

