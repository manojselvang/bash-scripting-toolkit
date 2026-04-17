# 🐚 Bash Scripting Toolkit

A structured collection of **real-world Bash scripts** covering networking, monitoring, logging, backup, and core shell concepts.

This repository is designed for:

* 📘 Learning Bash scripting
* 🛠️ Practicing real-world scenarios
* 🎯 Preparing for DevOps / SRE / Security interviews

---

## 📂 Repository Structure

```bash
.
├── backup/
│   ├── simple-backup/
│   └── incremental-backup/
│
├── fundamentals/
│   ├── ifs/
│   └── variables/
│
├── logging/
│   ├── grep-analysis/
│   ├── forensic-scan/
│   └── transaction-logs/
│
├── monitoring/
│   ├── system-status/
│   ├── disk-alert/
│   ├── database-readiness/
│   └── rate-limit/
│
├── network/
│   ├── port-scan/
│   ├── port-check/
│   ├── route-lookup/
│   ├── latency-check/
│   ├── download-speed/
│   └── netstat-cheatsheet/
│
├── process/
│   └── signal-handling/
│
├── validation/
│   ├── args-validation/
│   └── array-validation/
│
└── README.md
```

---

## 🚀 Key Features

* ✔ Structured, topic-based organization
* ✔ Each script includes:

  * `.sh` executable file
  * `README.md` with explanation
* ✔ Covers real-world use cases
* ✔ Focus on clarity and practical learning

---

## 🧠 Topics Covered

### 🌐 Networking

* Port scanning & port checks
* Route lookup
* Latency measurement
* Download speed testing
* Netstat reference

### 📊 Monitoring

* System status checks
* Disk usage alerts
* Rate limiting logic
* Service readiness checks

### 📜 Logging & Security

* Log analysis
* Forensic evidence collection
* Audit logging

### 💾 Backup

* Simple backup scripts
* Incremental backup with manifest tracking

### ✅ Validation

* Argument validation
* Array-based validation

### ⚙️ Fundamentals

* IFS (Internal Field Separator)
* Variable scope (local vs global)

### 🔁 Process Handling

* Signal trapping and cleanup

---

## ▶️ How to Use

Clone the repository:

```bash
git clone <your-repo-url>
cd <repo-name>
```

Run any script:

```bash
bash <script-path>
```

Example:

```bash
bash network/port-check/port-check.sh 8.8.8.8 53
```

---

## 🎯 Learning Approach

Each module contains:

* Practical script
* Step-by-step explanation
* Key Bash concepts

Start in this order for structured understanding:

1. fundamentals/
2. validation/
3. network/
4. monitoring/
5. logging/
6. process/
7. backup/

---

## ⚠️ Notes

* Scripts are designed for Linux environments
* Some commands may require root privileges
* Outputs may vary based on system configuration

---

## 🧩 Future Improvements

* Add automation (cron-based execution)
* Add logging to files
* Convert scripts into reusable functions
* Integrate with cloud environments

---

## 📌 Author

Manoj Selvan G

---

## ⭐ Contribution

Feel free to fork, improve, and experiment.
