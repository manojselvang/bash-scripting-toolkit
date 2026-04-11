# Download Speed Check Script (Bash)

## 📌 Overview

This script measures network download speed by downloading a sample file and calculating the transfer rate.

It uses either:

* `curl`
* `wget`

depending on availability.

---

## 🧠 Workflow

1. Check for available download tool (curl/wget)
2. Start timer
3. Download sample file
4. Stop timer
5. Calculate file size and duration
6. Compute download speed
7. Clean up temporary file

---

## 📜 Script

```bash
./download-speed.sh
```

---

## ▶️ Usage

```bash
bash download-speed.sh
```

---

## 📤 Example Output

```
Size: 10 MB
Time: 2s
Speed: 5 MB/s
```

---

## 🔑 Key Concepts Used

| Concept      | Explanation                   |
| ------------ | ----------------------------- |
| curl / wget  | File download tools           |
| date         | Time measurement              |
| arithmetic   | Speed calculation             |
| stat         | File size retrieval           |
| conditionals | Tool selection and validation |

---

## ⚙️ Script Logic Breakdown

### 1. Tool Detection

* Checks if `curl` exists
* Falls back to `wget`

### 2. Time Measurement

* Uses `date +%s` for start and end time

### 3. Download Execution

* Downloads a test file silently

### 4. Speed Calculation

* File size (bytes → MB)
* Time in seconds
* Speed = Size / Time

### 5. Cleanup

* Removes temporary file

---

## ⚠️ Notes

* Speed is approximate (depends on system timing)
* Uses integer division (no decimals)
* Requires internet connectivity
* `/tmp` must be writable

---

## 📁 Folder Structure

```bash
network/
  download-speed/
    download-speed.sh
    README.md
```
