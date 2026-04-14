# Rate Limit Check Script (Bash)

## 📌 Overview

This script evaluates whether incoming traffic is within a defined limit using a Bash function.

It returns a status based on:

* Normal traffic
* Limit exceeded
* Invalid input

---

## 🧠 Workflow

1. Accept request count and limit as input
2. Validate numeric values
3. Call function to evaluate condition
4. Capture return status
5. Print result

---

## 📜 Script

```bash
./rate-limit.sh <requests> <limit>
```

---

## ▶️ Usage

```bash
bash rate-limit.sh 150 100
bash rate-limit.sh 50 100
```

---

## 📤 Example Output

```bash
Status: Limit Exceeded
```

Other cases:

```bash
Status: Traffic Normal
```

```bash
Status: System Error
```

---

## 🔑 Key Concepts Used

| Concept          | Explanation                  |
| ---------------- | ---------------------------- |
| functions        | Encapsulate reusable logic   |
| return codes     | Function result via `return` |
| exit status      | `$?` captures result         |
| arguments        | `$1`, `$2` input handling    |
| regex validation | Ensures numeric input        |

---

## ⚙️ Script Logic Breakdown

### 1. Input Validation

* Ensures two arguments are provided
* Validates numeric values

### 2. Function Logic

* Negative → system error (`2`)
* Greater than limit → exceeded (`1`)
* Otherwise → normal (`0`)

### 3. Result Handling

* Captures function return code
* Maps it to readable output

---

## ⚠️ Notes

* Functions return status codes, not values
* `$?` must be captured immediately
* Designed for demonstration of logic flow

---

## 📁 Folder Structure

```bash
monitoring/
  rate-limit/
    rate-limit.sh
    README.md
```
