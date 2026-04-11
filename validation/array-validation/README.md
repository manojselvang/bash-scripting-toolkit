# Array-Based Service Validation Script (Bash)

## 📌 Overview

This script checks whether a given service exists in a predefined list using a Bash array.

It simulates service validation and writes the result to an output file.

---

## 🧠 Workflow

1. Define a list of services in an array
2. Accept user input
3. Validate input (non-empty)
4. Compare input against array elements
5. Write result to output file

---

## 📜 Script

```bash
./array-validation.sh
```

---

## ▶️ Usage

```bash
bash array-validation.sh
```

---

## 📤 Example Input / Output

### Example 1

Input:

```
Enter service name: nginx
```

Output (written to file):

```
nginx service is available
```

---

### Example 2

Input:

```
Enter service name: apache
```

Output (written to file):

```
apache service not found
```

---

## 🔑 Key Concepts Used

| Concept       | Explanation                |
| ------------- | -------------------------- |
| Arrays        | Store multiple values      |
| read          | Accept user input          |
| for loop      | Iterate through array      |
| conditionals  | Compare values             |
| flags/boolean | Track match using variable |
| file output   | Redirect output using `>`  |

---

## ⚙️ Script Logic Breakdown

### 1. Array Initialization

* Defines a list of services:

  * nginx
  * mysql
  * ssh

### 2. Input Handling

* Uses `read -p` to capture user input
* Validates that input is not empty

### 3. Matching Logic

* Iterates through array using `for`
* Compares each element with user input
* Sets a flag (`FOUND=true`) if match is found

### 4. Output Handling

* Writes result to file:

  * Available → if match found
  * Not found → if no match

### 5. Result Confirmation

* Prints output file location

---

## ⚠️ Notes

* This is a simulated check (not actual system services)
* Comparison is case-sensitive
* Output file path must be writable
* Existing file will be overwritten

---

## 📁 Folder Structure

```bash
validation/
  array-validation/
    array-validation.sh
    README.md
```
