# 📁 Simple File Renamer

A lightweight Ruby command-line tool to rename all files of a specific type in a given directory using a custom base name and sequential numbering.

## 🚀 Features

- Rename files in bulk using a simple command-line interface.
- Works with any file extension (e.g., `.jpg`, `.txt`, `.png`).
- Adds sequential numbering to renamed files.
- Prevents accidental overwrites by using unique names.

## 🧰 Requirements

- Ruby (>= 2.5)
- Works on Linux, macOS, and Windows

## ▶️ Usage
Run the script from the terminal:
```bash
ruby file_renamer.rb

```

## Sample Workflow
- Enter the path to the folder containing files.

- Enter the base name you want (e.g., document).

- Enter the file extension (e.g., pdf).

It will rename:
```text
fileA.pdf, fileB.pdf → document_1.pdf, document_2.pdf

```