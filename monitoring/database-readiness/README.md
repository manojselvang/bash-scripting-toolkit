# Database Readiness Check Script (Bash)

## 📌 Overview

This script checks whether a database is ready by looking for a **lock file**.

It retries a fixed number of times before failing.

---

## 🧠 Workflow

1. Define lock file path
2. Set retry limit
3. Loop until max retries reached
4. Check if file exists
5. Exit success if found
6. Otherwise retry
7. Exit with error if limit reached

---

## 📜 Script

```bash
./db-readiness.sh <max_retries>
```

---

## ▶️ Usage

```bash
bash db-readiness.sh
bash db-readiness.sh 5
```

---

## 📤 Example Output

### Success Case

```
Waiting for database...
Waiting for database...
Database connected.
```

---

### Failure Case

```
Waiting for database...
Waiting for database...
Waiting for database...
Error: Database timed out.
```

---

## 🔑 Key Concepts Used

| Concept    | Explanation                   |
| ---------- | ----------------------------- |
| File check | `-f` to detect lock file      |
| loop       | Retry mechanism               |
| arithmetic | Counter increment             |
| sleep      | Delay between retries         |
| exit codes | Success and failure signaling |

---

## ⚙️ Script Logic Breakdown

### 1. Lock File Check

* Uses `-f` to verify if file exists

### 2. Retry Mechanism

* Controlled by `MAX_RETRIES`
* Loop exits when limit is reached

### 3. Delay Handling

* Uses `sleep` to avoid tight loop

### 4. Exit Conditions

* File found → success (`exit 0`)
* Max retries reached → failure (`exit 1`)

---

## ⚠️ Notes

* Uses file-based readiness check
* Retry count can be customized
* Sleep interval is fixed (2 seconds)
* Suitable for simple readiness validation

---

## 📁 Folder Structure

```bash
monitoring/
  database-readiness/
    db-readiness.sh
    README.md
```
