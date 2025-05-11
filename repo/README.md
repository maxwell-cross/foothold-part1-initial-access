# Foothold Lab – Part 1: Initial Access with Python

## ⚠️ Disclaimer
This repository is for **educational purposes only**. It is intended for ethical hackers, red teamers, and cybersecurity professionals operating in lab environments. Do **not** deploy any of this in production or without proper authorization.

## 💻 What’s Included
- `payloads/`: Basic and obfuscated Python reverse shells
- `macro/`: VBA macro launcher for Word documents
- `hta/`: HTML Application dropper using mshta.exe
- `iso/`: LNK-based ISO delivery components

## 🧪 Lab Setup
1. Create a Windows 10/11 VM (VirtualBox/VMware)
2. Disable Defender temporarily inside the VM
3. Install Python and set PATH
4. Serve `rev.py` via HTTP (e.g., `python -m http.server`)
5. Generate `.lnk` using PowerShell:
```powershell
$Wsh = New-Object -ComObject WScript.Shell
$Lnk = $Wsh.CreateShortcut("Invoice.pdf.lnk")
$Lnk.TargetPath = "python"
$Lnk.Arguments = "payload.py"
$Lnk.IconLocation = "notepad.exe"
$Lnk.Save()
```
6. Use `PackMyPayload` or ISO creation tool to bundle the ISO.

## 🔗 Next: Privilege Escalation & Credential Dumping
Stay tuned for Part 2.