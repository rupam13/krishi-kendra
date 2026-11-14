# 🌱 Krishi Kendra Enterprise Billing & Khata Management POS System
### कृषी सेवा केंद्र डिजिटल बिलिंग, खतावणी, ग्राहक ३६०° नफा विश्लेषण व मागणी अंदाज प्रणाली

[![Version](https://img.shields.io/badge/version-v3.2.0--PRO-brightgreen.svg)](version.json)
[![License](https://img.shields.io/badge/license-Hardware--Bound-blue.svg)](machines.json)
[![Offline](https://img.shields.io/badge/offline-100%25%20Standalone-success.svg)](Krishi_Kendra_Billing.html)

---

## 🌟 Quick Overview (प्रमुख वैशिष्ट्ये)

1. **100% Standalone & Offline Ready (कोणत्याही बाह्य सर्व्हरशिवाय कार्यरत)**:
   - Run directly from single-file `Krishi_Kendra_Billing.html` in any web browser or Windows desktop app mode.
   - All operational data (invoices, inventory stock, customer khata, receipts) is stored locally and securely in browser `localStorage` with encrypted JSON disaster recovery backups.

2. **🧾 Compact Same-Page A4 Printing (कर बिल + ठेव जमा पावती)**:
   - Prints official GST Tax Invoice on top and Deposit Voucher on bottom of a single A4 sheet with scissor cut-line (`✂`). **No second blank page**.

3. **👥 Farmer 360° Profile & Net Profit Intelligence (शेतकरी ३६०° इतिहास व नफा)**:
   - Lifetime purchases, net profit in ₹ & margin %, product-wise breakdown, and 1-click ledger print.

4. **📈 Seasonal Demand Forecasting & Wholesale Purchase Orders (हंगामी मागणी अंदाज व PO)**:
   - Agricultural multipliers for Rabi, Kharif, and Summer (Zaid).
   - Generates wholesale purchase indent for seed & fertilizer distributors with 1-click WhatsApp dispatch.

5. **⏳ 7-Day Trial Extension Capped at 2 Months from First Install**:
   - Initial 7-day trial extendable by +7 days at a time up to a strict maximum of **60 Days (2 Months)** from the date of first installation.
   - Once 60 days are reached, software prompts for an activation key generated via `Admin_Key_Generator.html` bound to the computer's unique Machine ID.

6. **🌐 GitHub Production Auto-Updater & Machine Config Matching**:
   - Client PCs can click **"Check GitHub for Updates"** to pull the latest production build.
   - Click **"Sync Machine Settings"** to fetch custom Kendra configurations from `machines.json` matching their Machine ID.

---

## 🚀 How to Run on Client PC (सॉफ्टवेअर कसे चालवावे)

1. **Option A: 1-Click Desktop Launcher (Recommended for Windows)**
   - Double-click `Launch_Krishi_Kendra_Billing.bat` to launch in standalone application mode.

2. **Option B: Web Browser**
   - Double-click `Krishi_Kendra_Billing.html` to open in Google Chrome, Microsoft Edge, or Mozilla Firefox.

---

## 📁 Repository Structure

- `Krishi_Kendra_Billing.html`: Core standalone billing application.
- `version.json`: Live production version manifest and release notes for OTA checking.
- `machines.json`: Machine-specific custom Kendra settings directory.
- `Admin_Key_Generator.html`: Administrative utility to generate cryptographic activation keys for client Machine IDs.
- `Launch_Krishi_Kendra_Billing.bat`: Windows desktop application launcher.

---

### 👨‍💻 Developer & Support
- **Developer:** Rupam Wadibhasme
- **Mobile / WhatsApp:** +91 8857851277
- **Email:** rupam13@hotmail.com
