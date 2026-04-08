# Port Check Script (Bash)

## 📌 Overview

This script checks whether a specific port is open on a given host using Netcat (`nc`).

It is useful for:

* Quick connectivity testing
* Service availability checks
* Troubleshooting network issues

---

## 🧠 Workflow

1. Accept host and port as input
2. Validate arguments
3. Check if `nc` is installed
4. Attempt connection to target port
5. Display result based on exit status

---

## 📜 Script

```bash
./port-check.sh <host> <port>
```

---

## ▶️ Usage

```bash
bash port-check.sh 192.168.1.10 22
bash port-check.sh google.com 80
```

---

## 📤 Example Output

### Open Port

```
Port 22 is OPEN on 192.168.1.10
```

### Closed Port

```
Port 8080 is CLOSED on 192.168.1.10
```

---

## 🔑 Key Concepts Used

| Concept      | Explanation                    |
| ------------ | ------------------------------ |
| nc (netcat)  | Network connectivity check     |
| exit status  | `$?` to capture command result |
| conditionals | Determine open/closed state    |
| arguments    | `$1`, `$2`                     |

---

## ⚙️ Script Logic Breakdown

### 1. Argument Validation

* Ensures exactly two inputs (host and port)

### 2. Dependency Check

* Verifies `nc` is installed

### 3. Port Check

* Uses `nc -z -w 2` to test connectivity

### 4. Result Handling

* Exit code `0` → port open
* Exit code `1` → port closed

---

## ⚠️ Notes

* Requires `netcat (nc)` to be installed
* Timeout is set to 2 seconds
* Works for TCP-based checks

---

## 📁 Folder Structure

```bash
network/
  port-check/
    port-check.sh
    README.md
```
