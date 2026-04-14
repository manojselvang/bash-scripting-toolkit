# Forensic Log Scanner (Bash)

## 📌 Overview

This script scans a directory for `.log` files containing a **user-defined keyword**.

Matching files are:

* Copied to a secure **evidence directory**
* Locked using read-only permissions

---

## 🧠 Workflow

1. Validate input directory and keyword
2. Create evidence directory
3. Scan `.log` files
4. Detect keyword match
5. Copy matching files
6. Apply read-only permissions

---

## 📜 Script

```bash
./forensic-scan.sh <log_directory> <search_word>
```

---

## ▶️ Usage

```bash
chmod +x forensic-scan.sh

# Search for CRITICAL logs
./forensic-scan.sh /var/log CRITICAL

# Search for ERROR logs
./forensic-scan.sh /var/log ERROR
```

---

## 📤 Example Output

```bash
Evidence collected: app.log
Evidence collected: system.log
Scan completed
```

---

## 🔑 Key Concepts Used

| Concept             | Explanation                         |
| ------------------- | ----------------------------------- |
| argument validation | Ensures correct input               |
| globbing            | `*.log` file matching               |
| grep                | Dynamic keyword search              |
| basename            | Safe file naming                    |
| chmod               | File permission hardening           |
| nullglob            | Prevents errors when no files exist |

---

## ⚙️ Script Logic Breakdown

### 1. Input Validation

* Ensures directory exists
* Requires search keyword

### 2. Evidence Directory

* Creates `evidence/` folder inside target directory

### 3. Log Scanning

* Iterates through `.log` files

### 4. Keyword Matching

* Uses `grep -q` for efficient matching

### 5. Evidence Handling

* Copies matching files
* Locks them with `chmod 400`

### 6. Result Reporting

* Prints collected files
* Handles no-match scenario

---

## ⚠️ Notes

* Non-recursive (only scans given directory)
* Case-sensitive search
* Requires read permission on log files
* Evidence files are read-only

---

## 📁 Folder Structure

```bash
logging/
  forensic-scan/
    forensic-scan.sh
    README.md
```
