# Bash Audit Log Script

## Script

```bash
#!/bin/bash

SERVER_NAME="prod-db-01"
TRANSACTION_FEE='$0.05'

AUDIT_ENTRY="/[$(date)/] User: $(whoami) | Server: ${SERVER_NAME} | Fee: ${TRANSACTION_FEE}"

echo "$AUDIT_ENTRY"


---

Explanation

1. Shebang

#!/bin/bash

Tells the system to execute the script using the Bash shell.



---

2. Variable Definitions

SERVER_NAME="prod-db-01"
TRANSACTION_FEE='$0.05'

SERVER_NAME: Stores the server name.

TRANSACTION_FEE: Stored as a string ($ is preserved because of single quotes).



---

3. Command Substitution

$(date)
$(whoami)

$(date) → Inserts current system date & time.

$(whoami) → Inserts the current logged-in user.



---

4. String Construction

AUDIT_ENTRY="/[$(date)/] User: $(whoami) | Server: ${SERVER_NAME} | Fee: ${TRANSACTION_FEE}"

Builds a structured log entry.

${VARIABLE} is used for safe variable expansion.



---

5. Output

echo "$AUDIT_ENTRY"

Prints the final audit log line to the terminal.



---

Sample Output

/[Mon Mar 30 13:45:00 IST 2026/] User: manoj | Server: prod-db-01 | Fee: $0.05


---

Notes

Single quotes ' ' prevent variable expansion (used for $0.05).

Double quotes " " allow variable and command expansion.

Useful for logging, auditing, and debugging scripts.

