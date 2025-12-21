# 100 Days of DevSecOps 🛡️

**Goal:** Building a hardened Linux environment, security tools, and automation scripts from scratch.
**Tech Stack:** Linux (Ubuntu), Bash, UFW, OpenSSH, Python.
**Status:** 🟢 Active (Day 7/100)

## 📂 Progress Log

| Day | Topic | Description | Status |
| :--- | :--- | :--- | :--- |
| **Day 08** | 🧠 AI Anomaly Detection | CPU-Optimized Weightless Neural Network | ✅ Completed 
| **Day 07** | 🔫 Fail2Ban | Automated Intrusion Prevention System | ✅ Completed |
| **Day 06** | 🛡️ SSH Hardening | Disabling Passwords, Enforcing Key Auth | ✅ Completed |
| **Day 05** | 🔍 File Integrity Monitor | SHA-256 Hashing & Baseline Comparison | ✅ Completed |
| **Day 04** | 🧱 Firewall Automation | UFW Configuration Script | ✅ Completed |
| **Day 03** | 🚨 Net Sentry | Port Scanning & Intrusion Detection | ✅ Completed |
| **Day 02** | ⚙️ Process Management | Linux Lifecycle & Signal Handling | ✅ Completed |
| **Day 01** | 👤 Identity Audit | User & Root Account Auditing | ✅ Completed |

---

### Day 8: AI-Powered Intrusion Detection (Research)
- **Project Link:** [📂 Sentinel Sandbox Source Code](https://github.com/nevinshine/sentinel-sandbox)
- **Problem:** Kernel-level security requires low latency; standard Deep Learning is too heavy for CPU-only servers.
- **Solution:** Engineered a custom **CPU-Optimized Weightless Neural Network (DWN)** based on WiSARD architecture.
- **Achievement:**
  - Replaced NVIDIA CUDA dependencies with pure PyTorch Embeddings.
  - Trained on **UNSW-NB15** (Network Intrusion Dataset).
  - Achieved **78.72% Accuracy** with negligible CPU overhead.

### Day 7: Fail2Ban Intrusion Prevention
- **Problem:** Even with SSH keys, bots can flood the server with thousands of login attempts, wasting resources and cluttering logs.
- **Solution:** Installed **Fail2Ban** to monitor `/var/log/auth.log` and automatically update Firewall rules to ban malicious IPs.
- **Configuration:**
  - **Bantime:** 1 hour (Punishment duration)
  - **Maxretry:** 3 attempts (Strike limit)
  - **Action:** Immediate IP block via `iptables`/UFW.

### Day 6: SSH Hardening & Key Authentication
- **Problem:** Default SSH settings allow attackers to brute-force passwords and log in as `root`.
- **Solution:** Configured `/etc/ssh/sshd_config` to strictly enforce **Ed25519 SSH Keys**.
- **Hardening Steps:**
  - `PermitRootLogin no` (Stop God-mode login)
  - `PasswordAuthentication no` (Disable text passwords)
  - `PubkeyAuthentication yes` (Require cryptographic keys)

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
