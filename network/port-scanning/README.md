# Port Scanning Script (Bash)

## 📌 Overview

This script performs a simple TCP port scan using Netcat (`nc`).

It scans ports **1 to 1024** on a given target IP address and reports whether each port is open or closed.

---

## 🧠 Workflow

1. Accept target IP as input (optional)
2. Default to `10.0.0.5` if no input is provided
3. Loop through ports 1–1024
4. Use `nc` to check each port
5. Print port status

---

## 📜 Script

```bash
./port_scanning.sh <target_ip>
```

---

## ▶️ Usage

```bash
bash port_scanning.sh
bash port_scanning.sh 192.168.1.1
```

---

## 📤 Example Output

```
Scanning target: 192.168.1.1
--------------------------------
[OPEN]   Port 22
[CLOSED] Port 23
[OPEN]   Port 80
--------------------------------
Scan complete
```

---

## 🔑 Key Concepts Used

| Concept     | Explanation                  |
| ----------- | ---------------------------- |
| for loop    | Iterates through port range  |
| nc (netcat) | Checks port connectivity     |
| conditional | Determines open/closed state |
| redirection | Suppresses error output      |

---

## ⚙️ Dependencies

* `nc` (Netcat)

### Install Netcat

```bash
# Debian/Ubuntu
sudo apt install netcat

# RHEL/CentOS
sudo yum install nc

# Arch Linux
sudo pacman -S openbsd-netcat
```

---

## ⚠️ Notes

* Scans sequentially → slower compared to advanced tools
* For real-world scenarios, tools like `nmap` are recommended
* Some systems may block scan attempts (firewall/IDS)

---

## 📁 File Structure

```
network/
└── port-scanning/
    ├── port_scanning.sh
    └── README.md
```
