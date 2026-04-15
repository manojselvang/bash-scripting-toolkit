# Transaction Audit Log Script (Bash)

## 📌 Overview

This script generates a structured audit log entry containing:

* Timestamp
* Username
* Server name
* Transaction fee

It is useful for:

* Logging user activity
* Auditing operations
* Debugging scripts

---

## 🧠 Workflow

1. Define variables
2. Fetch system information
3. Construct log entry
4. Print output

---

## 📜 Script

```bash
./transaction-log.sh
```

---

## ▶️ Usage

```bash
bash transaction-log.sh
```

---

## 📤 Example Output

```bash
[Mon Mar 30 13:45:00 IST 2026] User: manoj | Server: prod-db-01 | Fee: $0.05
```

---

## 🔑 Key Concepts Used

| Concept              | Explanation                 |
| -------------------- | --------------------------- |
| variables            | Store reusable values       |
| command substitution | `$(command)` execution      |
| string formatting    | Structured log construction |
| echo                 | Output display              |

---

## ⚙️ Script Logic Breakdown

### 1. Variable Definition

* `SERVER_NAME` → static identifier
* `TRANSACTION_FEE` → stored as string (preserves `$`)

### 2. Command Substitution

* `$(date)` → current timestamp
* `$(whoami)` → current user

### 3. Log Construction

* Combines static and dynamic values
* Uses `${VAR}` for clarity

### 4. Output

* Prints final structured log line

---

## ⚠️ Notes

* Uses system time (`date`)
* Output is printed to terminal (not saved)
* Can be extended to log files

---

## 📁 Folder Structure

```bash
logging/
  transaction-logs/
    transaction-log.sh
    README.md
```
