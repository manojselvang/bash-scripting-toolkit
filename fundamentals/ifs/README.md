# IFS Handling in Bash (Internal Field Separator)

## 📌 Overview

`IFS` (Internal Field Separator) is a special variable in Bash that defines how input is split into words or fields.

By default, IFS includes:

* Space
* Tab
* Newline

It is commonly used in:

* Input parsing
* String splitting
* Loop processing

---

## 🧠 Workflow

1. Read input using default IFS
2. Modify IFS to custom delimiter
3. Use IFS for string splitting

---

## 📜 Script

```bash
./ifs-handling.sh
```

---

## ▶️ Usage

```bash
bash ifs-handling.sh
```

---

## 📤 Example Execution

### Example 1: Default IFS

Input:

```
Vijay Aniket
```

Output:

```
Vijay
Aniket
```

---

### Example 2: Custom IFS (Comma)

Input:

```
Vijay,Aniket Shiva
```

Output:

```
Vijay
Aniket Shiva
```

---

### Example 3: String Splitting

Output:

```
bat
ball
stadium
```

---

## 🔑 Key Concepts Used

| Concept            | Explanation                   |
| ------------------ | ----------------------------- |
| IFS                | Defines input field separator |
| read               | Splits input into variables   |
| for loop           | Iterates over split values    |
| variable expansion | `$str` splitting based on IFS |

---

## ⚙️ Script Logic Breakdown

### 1. Default IFS Behavior

* Splits input based on space
* Assigns values to variables sequentially

### 2. Custom IFS

* Changes delimiter to comma
* Controls how input is split

### 3. String Splitting

* Applies IFS to variables
* Used inside loops for iteration

---

## ⚠️ Notes

* IFS change is session-wide (affects subsequent operations)
* Always reset IFS if used in larger scripts
* Last variable captures remaining input

---

## 📁 Folder Structure

```bash
fundamentals/
  ifs/
    ifs-handling.sh
    README.md
```
