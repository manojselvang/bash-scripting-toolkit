Here’s your script converted into a clean GitHub-ready Markdown (.md) format 👇


---

# 🔍 Investigate Script (Forensic Log Scanner)

## 📌 Objective
This script scans a given directory for `.log` files containing the keyword **"CRITICAL"**.  
Any matching files are treated as **evidence**, copied to a secure folder, and locked to prevent tampering.

---

## 📜 Script: `investigate.sh`

```bash
#!/bin/bash

if [[ ! -d "$1" ]]; then
        echo "an error"
        exit 1
fi

TARGET_DIR="$1"
EVIDENCE_DIR="$TARGET_DIR/evidence"

mkdir -p "$EVIDENCE_DIR"

for file in "$TARGET_DIR"/*.log; do
        if grep -q "CRITICAL" "$file"; then
                cp "$file" "$EVIDENCE_DIR/"
                chmod 400 "$EVIDENCE_DIR/$(basename "$file")"
        fi
done


---

⚙️ How It Works

✅ 1. Input Validation

Checks if the provided directory exists

Exits with an error if invalid


✅ 2. Evidence Directory Creation

Creates an evidence/ folder inside the target directory


✅ 3. Log File Scanning

Iterates through all .log files in the directory


✅ 4. Keyword Detection

Uses grep -q to silently check for "CRITICAL"


✅ 5. Evidence Preservation

Copies matching files to the evidence/ folder

Original files remain unchanged


✅ 6. File Protection

Applies chmod 400 to copied files

Ensures read-only access for the owner



---

🚀 Usage

chmod +x investigate.sh
./investigate.sh /path/to/logs


---

⚠️ Notes

Only scans the specified directory (non-recursive)

If no .log files exist, script safely skips execution

Permissions are applied only to copied evidence files



---

🧠 Concepts Used

Bash argument validation

File pattern matching (*.log)

grep for keyword detection

basename for safe file handling

File permission hardening (chmod 400)



---

✅ Outcome

Automated forensic evidence collection

Secure handling of sensitive log data

Preservation of original logs for system integrity


---

If you want, I can also add:
- 🔐 SHA256 hashing section  
- 📄 Logging output (who ran, when, what files found)  
- 🧪 Test cases for GitHub README  

Just tell me 👍