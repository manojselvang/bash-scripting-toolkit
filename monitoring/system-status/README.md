# System Status Check Script (Bash)

## 📌 Overview

This script checks basic system conditions based on user input.

It supports two modes:

* **CPU Check** → evaluates current CPU load
* **Log Check** → verifies if a system log file exists

---

## 🧠 Workflow

1. Accept input (`cpu` or `log`)
2. Evaluate condition based on input
3. Perform check
4. Print result
5. Handle invalid input

---

## 📜 Script

```bash
./system-status.sh <cpu|log>
```

---

## ▶️ Usage

```bash
bash system-status.sh cpu
bash system-status.sh log
```

---

## 📤 Example Output

### CPU Mode

```
Result: CPU Critical
```

---

### Log Mode

```
Result: Log Active
```

---

### Invalid Input

```
Error: Invalid selection
```

---

## 🔑 Key Concepts Used

| Concept         | Explanation         |
| --------------- | ------------------- |
| positional args | `$1` input handling |
| conditionals    | `if-elif-else`      |
| string compare  | `==`                |
| numeric compare | `-gt`               |
| file check      | `-f`                |

---

## ⚙️ Script Logic Breakdown

### 1. Input Validation

* Ensures exactly one argument is provided

### 2. CPU Mode

* Uses a simulated value (`CURRENT_LOAD`)
* Classifies system load into:

  * Critical
  * Elevated
  * Normal

### 3. Log Mode

* Checks if `/var/log/syslog` exists
* Determines log availability

### 4. Error Handling

* Handles invalid input gracefully

---

## ⚠️ Notes

* CPU load is hardcoded for demonstration
* Replace with real metrics (`top`, `uptime`) for production
* `/var/log/syslog` may vary across distributions

---

## 📁 Folder Structure

```bash
monitoring/
  system-status/
    system-status.sh
    README.md
```
