# Netstat Commands Cheatsheet

## 📌 Overview

This document provides commonly used `netstat` commands for network inspection and troubleshooting.

It covers:

* Active connections
* Listening ports
* Protocol-specific checks
* Filtering techniques
* Routing and interface details

---

## 🔧 Basic

```bash
netstat
```

Shows active network connections.

---

## 🎧 Listening Ports

```bash
netstat -l
netstat -ln
netstat -lpn
```

* `-l` → listening ports
* `-n` → numeric output (no DNS resolution)
* `-p` → process information

---

## 🌐 TCP / UDP

```bash
netstat -t
netstat -u
netstat -tu
```

* `-t` → TCP
* `-u` → UDP

---

## ⭐ Most Used Command

```bash
netstat -tulnp
```

Displays:

* TCP + UDP
* Listening ports
* Process info

---

## 🔗 Established Connections

```bash
netstat -an | grep ESTABLISHED
```

Shows active established connections.

---

## 🎯 Filter by Port

```bash
netstat -tulnp | grep :80
```

Filters output for specific port.

---

## ⚙️ Filter by Process

```bash
netstat -tulnp | grep nginx
```

Filters connections by process name.

---

## 🛣️ Routing Table

```bash
netstat -r
```

Displays routing table.

---

## 🧩 Network Interfaces

```bash
netstat -i
```

Shows interface statistics.

---

## 📊 Protocol Statistics

```bash
netstat -s
```

Displays protocol-level statistics.

---

## 🔄 Continuous Monitoring

```bash
netstat -c
```

Updates output continuously.

---

## ⚠️ Notes

* `netstat` is **deprecated** on many modern Linux systems
* Recommended replacement:

```bash
ss -tulnp
```

---

## 📁 Folder Structure

```bash
network/
  netstat-cheatsheet/
    README.md
```
