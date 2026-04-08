# Route Lookup Script (Bash)

## 📌 Overview

This script retrieves routing information for a given target IP using the `ip route get` command.

It displays:

* Gateway (if applicable)
* Network interface
* Source IP address

---

## 🧠 Workflow

1. Accept target IP as input
2. Execute `ip route get`
3. Check if a gateway (`via`) exists
4. Extract required fields using `awk`
5. Display formatted output

---

## 📜 Script

```bash id="z9k2fd"
./route-lookup.sh <target_ip>
```

---

## ▶️ Usage

```bash id="8f6d2k"
bash route-lookup.sh 8.8.8.8
```

---

## 📤 Example Output

### With Gateway

```id="x7g1lm"
Target: 8.8.8.8 | Gateway: 192.168.1.1 | Interface: eth0 | Source: 192.168.1.10
```

### Direct Route

```id="v3n5qe"
Target: 192.168.1.5 | Gateway: Direct Link | Interface: eth0 | Source: 192.168.1.10
```

---

## 🔑 Key Concepts Used

| Concept      | Explanation                    |
| ------------ | ------------------------------ |
| ip command   | Retrieves routing details      |
| grep         | Checks for presence of gateway |
| awk          | Extracts specific fields       |
| conditionals | Determines route type          |
| arguments    | `$1` input handling            |

---

## ⚙️ Script Logic Breakdown

### 1. Input Validation

* Ensures exactly one argument is provided

### 2. Route Retrieval

* Uses `ip route get <IP>` to fetch route details

### 3. Gateway Check

* Uses `grep` to detect if `via` exists

### 4. Field Extraction

* Extracts:

  * Gateway (`$3`)
  * Interface (`$5` or `$4`)
  * Source IP (`$7` or `$6`)

### 5. Output Formatting

* Displays all values in a single structured line

---

## ⚠️ Notes

* Requires `ip` command (Linux systems)
* Output format depends on system routing table
* Field positions may vary slightly across environments

---

## 📁 Folder Structure

```bash id="k4c8wp"
network/
  route-lookup/
    route-lookup.sh
    README.md
```
