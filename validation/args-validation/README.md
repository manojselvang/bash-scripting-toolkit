# Argument Validation Script (Bash)

## 📌 Overview

This script generates a configuration file for a service using user-provided inputs.

It validates:

* Number of arguments
* Service name format
* Port number range

---

## 🧠 Workflow

1. Validate number of input arguments
2. Validate service name format
3. Validate port number (1–65535)
4. Create configuration file
5. Display success message

---

## 📜 Script

```bash
./args-validation.sh <service_name> <port>
```

---

## ▶️ Usage

```bash
bash args-validation.sh database 3306
```

---

## 📤 Example Output

```
Config generated: database.conf
```

Generated file:

```
[service]
name=database
port=3306
```

---

## 🔑 Key Concepts Used

| Concept          | Explanation           |
| ---------------- | --------------------- |
| Positional args  | `$1`, `$2`            |
| Argument count   | `$#`                  |
| Regex validation | `[[ ... =~ ... ]]`    |
| Numeric checks   | Port range validation |
| File redirection | `>`                   |

---

## ⚙️ Script Logic Breakdown

### 1. Argument Count Validation

* Ensures exactly 2 arguments are provided

### 2. Service Name Validation

* Allows only alphanumeric, `_`, `-`

### 3. Port Validation

* Must be numeric
* Must be within valid port range

### 4. Config File Creation

* Writes structured data into `.conf` file

---

## ⚠️ Notes

* Overwrites existing config file if present
* Service name must be valid (no spaces/special chars)
* Port must be between 1 and 65535

---

## 📁 Folder Structure

```bash
validation/
  args-validation/
    args-validation.sh
    README.md
```
