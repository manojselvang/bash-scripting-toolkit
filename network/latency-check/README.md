# Latency Check Script (Bash)

## 📌 Overview

This script checks whether a host is reachable using `ping` and calculates the **average network latency**.

It is useful for:

* Network diagnostics
* Connectivity checks
* Performance monitoring

---

## 🧠 Workflow

1. Accept host as input
2. Run `ping` command
3. Capture output and exit status
4. Extract average latency
5. Display result

---

## 📜 Script

```bash
./latency-check.sh <host>
```

---

## ▶️ Usage

```bash
bash latency-check.sh 8.8.8.8
bash latency-check.sh google.com
```

---

## 📤 Example Output

### Reachable Host

```
8.8.8.8 is reachable
Average latency: 12.3 ms
```

---

### Unreachable Host

```
10.255.255.1 is unreachable
```

---

## 🔑 Key Concepts Used

| Concept     | Explanation                       |
| ----------- | --------------------------------- |
| ping        | Network reachability check        |
| pipefail    | Detect pipeline failures          |
| awk         | Extract latency value             |
| exit status | `$?` to determine success/failure |
| arguments   | `$1` input handling               |

---

## ⚙️ Script Logic Breakdown

### 1. Input Validation

* Ensures exactly one argument is provided

### 2. Ping Execution

* Sends 3 packets
* Timeout of 2 seconds

### 3. Output Parsing

* Extracts average latency from `rtt` line

### 4. Result Handling

* Success → prints latency
* Failure → prints unreachable message

---

## ⚠️ Notes

* Requires `ping` command
* Output format may vary slightly across systems
* Uses ICMP, which may be blocked in some environments

---

## 📁 Folder Structure

```bash
network/
  latency-check/
    latency-check.sh
    README.md
```
