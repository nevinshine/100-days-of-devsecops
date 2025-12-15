# 100 Days of DevSecOps 🛡️

**Goal:** Building a hardened Linux environment, security tools, and automation scripts from scratch.
**Tech Stack:** Linux (Ubuntu), Bash, UFW, OpenSSH, Python.
**Status:** 🟢 Active (Day 5/100)

## 📂 Progress Log

### Day 5: File Integrity Monitor (FIM)
- **Problem:** Attackers often modify system binaries or configs (like `/etc/shadow`) to maintain persistence.
- **Solution:** `tripwire.sh` - A script that creates SHA-256 baselines of critical files and alerts on modification.
- **Command:** `./tripwire.sh check`

### Day 4: Firewall Automation
- **Problem:** Leaving ports open is the #1 vulnerability.
- **Solution:** `setup_firewall.sh` - Automated UFW configuration to deny all incoming traffic except SSH.

### Day 3: Network Intrusion Detection
- **Problem:** Identifying unauthorized services listening on the network.
- **Solution:** `net_sentry.sh` - A scanner that detects listening ports, flags Telnet usage, and checks for public exposure (`0.0.0.0`).

### Day 2: Process Management
- **Topic:** Linux Process Lifecycle.
- **Artifact:** `proc_cheat_sheet.md` - Documentation on `top`, `ps aux`, and signal handling (`kill`).

### Day 1: Identity & Access Audit
- **Problem:** Unused accounts are potential backdoors.
- **Solution:** `user_audit.sh` - A script to list human users (Bash shells) and Root-privileged accounts (UID 0).

---
*Created by Nevin Shine as part of the 100 Days Challenge.*
