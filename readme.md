# 🛡️ Lock Windows 10 – Block Windows 11 Forever  STAY DUALBOOT

**Block all Windows 11 upgrade attempts on Windows 10. Permanently. Without losing updates, drivers or internet access.**

No nags. No Upgrade Assistant. No telemetry tricks.  
Just **Windows 10**, how you wanted it.

---

## 🎮 Manifesto

> **Mac is for your eyes.**  
> **Windows exists for DirectX.**  
> **Linux exists for everything else.**

Use the right tool for the right job.  
If you're on Windows, you're here to play — not to be forced into Microsoft's agenda.

This project protects that.

---

## ✅ What it does

- Locks your OS to **Windows 10 version 22H2**
- Prevents **Upgrade Assistant** reinstalls
- Silently disables `appraiserres.dll` so it can't flag your system as "ready for Windows 11"
- Hides banners and offers to upgrade
- Still allows:
  - Windows 10 security updates
  - Microsoft Store
  - Drivers
  - Internet
  - Peace

---

## 💾 How to use this `.bat` script

1. Download `lock_windows10.bat` from this repo
2. Right-click it
3. Select **“Run as administrator”**
4. You'll see status messages confirming:
   - Registry entries added
   - DLL neutralized
   - Upgrade Assistant blocked
5. You're done. Your system is now locked to Windows 10.

---

## 🔁 Is it reversible?

Yes.

- You can restore `C:\Windows\System32\appraiserres.dll.bak` if needed
- You can delete the fake `C:\Windows10Upgrade` folder
- You can reset registry keys manually or by script

But unless you're forced to...  
**don’t.**

---

## 🧪 Tested on:

- Windows 10 Home & Pro (21H2, 22H2)
- Legacy BIOS and UEFI
- Intel and AMD systems
- Offline and online devices

---

## 📜 License

MIT – Free to use, fork, remix, improve.  
No telemetry. No upcharge. No forced reboot. Ever.

---

> ✊ This script exists to protect people from being treated like test subjects.  
> Let people play in peace.
