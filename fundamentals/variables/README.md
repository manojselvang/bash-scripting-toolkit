# Variable Scope in Bash (Local vs Global)

## 📌 Overview

This script demonstrates the difference between **local and global variables** in Bash.

It shows how:

* Local variables exist only inside functions
* Global variables persist outside functions

---

## 🧠 Workflow

1. Define global variables
2. Define a function with a local variable
3. Call the function
4. Observe variable behavior inside and outside function

---

## 📜 Script

```bash
./variable-scope.sh
```

---

## ▶️ Usage

```bash
bash variable-scope.sh
```

---

## 📤 Example Output

```
Job Status: Running: Database-Backup
Final Global Status: Idle
Total Jobs: 1
```

---

## 🔑 Key Concepts Used

| Concept     | Explanation                  |
| ----------- | ---------------------------- |
| global vars | Available throughout script  |
| local vars  | Restricted to function scope |
| functions   | Encapsulate logic            |
| arithmetic  | `((JOB_ID++))` increment     |

---

## ⚙️ Script Logic Breakdown

### 1. Global Variables

* `STATUS="Idle"` → initial state
* `JOB_ID=0` → job counter

---

### 2. Function Execution

* Uses `local STATUS` → overrides only within function
* Increments global `JOB_ID`

---

### 3. Scope Behavior

* Local `STATUS` does NOT affect global `STATUS`
* Global `JOB_ID` is updated

---

## ⚠️ Notes

* `local` is only valid inside functions
* Global variables can be modified unless shadowed
* Helps prevent unintended variable overwrites

---

## 📁 Folder Structure

```bash
fundamentals/
  variables/
    variable-scope.sh
    README.md
```
