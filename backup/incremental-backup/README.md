# Incremental Backup Script (Bash)

## 📌 Overview

This script performs an **incremental backup** by copying only **new or modified files** from a source directory to a destination directory.

It uses a **manifest file** to track file changes based on:

* Last modified time (`mtime`)
* File size

---

## 🧠 Workflow

1. Validate input directories
2. Load existing manifest (if present)
3. Scan source directory
4. Compare file metadata
5. Copy only changed/new files
6. Update manifest
7. Print summary

---

## 📜 Script

```bash
./incremental-backup.sh <source> <destination>
```

---

## ▶️ Usage

```bash
bash incremental-backup.sh /data/source /data/backup
```

---

## 📤 Example Output

```
Copied: 5, Skipped: 12, Errors: 0
```

---

## 📂 Manifest Format

Each entry:

```
relative/path|mtime:size
```

Example:

```
dir1/file.txt|1700000000:2048
```

---

## 🔑 Key Concepts Used

| Concept              | Explanation                       |
| -------------------- | --------------------------------- |
| Associative array    | Track file states                 |
| find + -print0       | Safe file iteration               |
| IFS                  | Custom delimiter parsing          |
| stat                 | File metadata extraction          |
| process substitution | `< <(...)` avoids subshell issues |
| atomic write         | Prevents manifest corruption      |

---

## ⚙️ Script Logic Breakdown

### 1. Input Validation

* Ensures source and destination exist

### 2. Manifest Loading

* Reads previous file states into an array

### 3. File Scanning

* Uses `find` with null delimiter for safety

### 4. Change Detection

* New file → not in manifest
* Modified file → metadata changed

### 5. Copy Operation

* Preserves metadata using `cp -p`
* Creates directory structure if needed

### 6. Manifest Update

* Writes updated data using atomic file replacement

### 7. Summary

* Displays copied, skipped, and error counts

---

## ⚠️ Notes

* Works on Linux systems with `stat`
* Manifest file is stored in destination directory
* Handles files with spaces and special characters
* Requires Bash 4+ (for associative arrays)

---

## 📁 Folder Structure

```bash
backup/
  incremental-backup/
    incremental-backup.sh
    README.md
```
