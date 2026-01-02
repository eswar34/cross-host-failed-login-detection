# Cross-Host Failed Login Detection (SOC | Bash)

## 📌 Overview
This project simulates a **Security Operations Center (SOC)** detection use case
focused on identifying **failed authentication attempts across multiple hosts**.

Attackers may test credentials across different servers to bypass per-host detection.
This script correlates authentication failures to identify such **cross-host attack patterns**.

---

## 🔍 Detection Use Case
- Detects source IPs attempting logins on multiple servers
- Identifies lateral brute-force behavior
- Demonstrates cross-host log correlation
- Mimics real SOC central logging analysis

---

## 📂 Input File

### `auth.log`
Example format:
server1 Failed password for root from 10.10.10.5
server2 Failed password for admin from 10.10.10.5
server3 Failed password for user from 10.10.10.5

yaml
Copy code

---

## ⚙️ Detection Logic
1. Extract source IP addresses from failed login attempts
2. For each IP:
   - Identify unique hostnames involved
   - Count the number of hosts targeted
3. Flag IPs that appear on more than a defined number of hosts

---

## ▶️ Usage

Make the script executable:
```bash
chmod +x cross_host_detection.sh
Run the script:

bash
Copy code
./cross_host_detection.sh
🧰 Tools Used
bash

grep

awk

sort

uniq

wc

🛡️ SOC Relevance
This project demonstrates:

Cross-host correlation

Lateral attack detection

Log analysis fundamentals

SOC Tier-1 / Tier-2 analysis mindset

Bash scripting for security monitoring

🚨 Disclaimer
This project is for educational and defensive security purposes only.
All data used is simulated.

yaml
Copy code

---

# ✅ 3️⃣ LinkedIn Post (Student / Fresher Tone)

Copy–paste and add your GitHub link:

---

🔍 **SOC Learning | Cross-Host Log Analysis Project** 🔍  

As part of my hands-on learning in **cybersecurity and SOC fundamentals**, I worked on a project focused on **detecting authentication failures across multiple hosts**.

🛡️ **Project:** Cross-Host Failed Login Detection  
📄 **What I built:**  
• Analyzed authentication logs from multiple servers  
• Detected source IPs attempting failed logins across different hosts  
• Identified potential **lateral brute-force attack patterns**  
• Implemented detection logic using **Bash scripting**

🛠️ **Skills practiced:**  
• Bash scripting  
• Log parsing & correlation  
• SOC detection logic  
• Linux authentication logs  
• Git & GitHub

This project helped me understand why **single-host monitoring is not enough** and how SOC teams use centralized logs to detect advanced attack behavior.

🔗 GitHub repository:  
👉 *add your repo link here*

Still learning and building more SOC-style detection projects 🚀  

#CyberSecurity #SOC #StudentLearning #BlueTeam #Bash #Linux #LogAnalysis #DetectionEngineering #GitHub #InfoSec

---

## 🧠 Mentor Verdict
With this:
- ✔ Correct detection logic  
- ✔ Clean Git workflow  
- ✔ Strong README  
- ✔ Professional LinkedIn post  

👉 This is **portfolio-ready SOC work**.

---

### Want next?
1️⃣ MITRE ATT&CK mapping  
2️⃣ Sample output section  
3️⃣ Advanced SOC detection problem  
4️⃣ Mock SOC interview based on your repos  

Just reply with **1 / 2 / 3 / 4** 👍
