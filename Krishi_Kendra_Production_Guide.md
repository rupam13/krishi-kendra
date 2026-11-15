# Krishi Kendra Enterprise Billing & POS System
## Live Production Deployment & Client PC Pull Reference Manual (थेट उत्पादन व क्लायंट वितरण मार्गदर्शक)

> [!NOTE]
> **GitHub Live & Verified**: The complete enterprise software suite, manifest files, and desktop launcher have been **successfully committed and pushed** to the official repository:
> **Repository URL**: [https://github.com/rupam13/krishi-kendra](https://github.com/rupam13/krishi-kendra) (Commit `b7c55f6` on branch `main`).
> All client PCs can now pull, run, and update the software directly from GitHub or run 100% offline!

---

### 🌐 1. Live GitHub Production Endpoints (थेट गिटहब लिंक्स)

| घटक (Component) | थेट GitHub Raw URL (Direct Download) | उद्देश (Purpose) |
| :--- | :--- | :--- |
| **मुख्य ॲप्लिकेशन** | [Krishi_Kendra_Billing.html](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Krishi_Kendra_Billing.html) | क्लायंट संगणकावर चालवण्यासाठी १००% ऑफलाइन सक्षम मुख्य फाइल |
| **आवृत्ती मॅनिफेस्ट** | [version.json](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/version.json) | सॉफ्टवेअरमधील OTA अपडेट तपासणीसाठी लाइव्ह फीड |
| **मशीन सेटिंग्ज डेटाबेस** | [machines.json](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/machines.json) | मशीन कोडनुसार सानुकूल केंद्र सेटिंग्ज स्वयंचलित मॅचिंग |
| **ॲडमिन की जनरेटर** | [Admin_Key_Generator.html](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Admin_Key_Generator.html) | ॲडमिनसाठी परवाना की निर्मिती साधन (१ महिना ते ५ वर्षे) |
| **१-क्लिक ॲप लाँचर** | [Launch_Krishi_Kendra_Billing.bat](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Launch_Krishi_Kendra_Billing.bat) | विंडोज डेस्कटॉपवर स्वतंत्र ॲप्लिकेशन विंडोमध्ये सुरू करण्यासाठी |

---

### 💻 2. How Client PCs Pull & Run the Software (क्लायंट कॉम्प्युटरवर कसे घ्यावे)

#### पर्याय १: थेट ब्राउझरवरून १-क्लिक डाउनलोड (सर्वात सोपा मार्ग)
1. क्लायंट कॉम्प्युटरवरील ब्राउझरमध्ये खालील लिंक उघडा:
   👉 **[https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Krishi_Kendra_Billing.html](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Krishi_Kendra_Billing.html)**
2. कीबोर्डवर **`Ctrl + S`** दाबून फाइल तुमच्या कॉम्प्युटरवर (उदा. `D:\KrishiKendra\`) सेव्ह करा.
3. त्या फाइलवर डबल-क्लिक करून बिलिंग सुरू करा!

#### पर्याय २: Git द्वारे क्लोन किंवा पुल (Git Clone / Pull)
नवीनतम कोड घेण्यासाठी क्लायंट कॉम्प्युटरवर खालील कमांड चालवा:
```bash
git clone https://github.com/rupam13/krishi-kendra.git
```
किंवा भविष्यात नवीन अपडेट घेण्यासाठी त्या फोल्डरमध्ये जाऊन:
```bash
git pull origin main
```

#### पर्याय ३: सॉफ्टवेअरमधील इन-बिल्ट १-क्लिक GitHub OTA अपडेट
- एकदा सॉफ्टवेअर कॉम्प्युटरवर सुरू झाल्यावर, ऑपरेटर थेट **`🚀 Updates & Backup`** टॅबमध्ये जाऊ शकतो.
- **"🔍 Check GitHub for Updates"** वर क्लिक केल्यावर सॉफ्टवेअर थेट `https://github.com/rupam13/krishi-kendra` वरील नवीन कोड तपासून दाखवेल.
- **"⚡ 1-Click Pull & Update from GitHub"** वर क्लिक केल्यावर विद्यमान डेटा (बिले, शेतकरी, साठा) **सुरक्षित ठेवून** नवीनतम फाईल आपोआप अपडेट होईल!

---

### ⏳ 3. 7-Day Trial Extension Capped at 2 Months from First Install

```
[ First Installation Date: kk_install_date ] ──────────────► [ Maximum 60 Days (2 Months) Cap ]
         │
         ├──► Initial Trial: 7 Days (Valid till Day 7)
         │
         ├──► Operator clicks "⏳ +7 दिवस चाचणी वाढवा (Extend 7 Days)"
         │       └── Expiry extends by +7 days (Day 14, Day 21, Day 28...)
         │
         ├──► Approaching 60 Days: Caps strictly at Day 60 (cannot exceed 2 months from install)
         │
         └──► At Day 60: 🛑 FURTHER TRIAL EXTENSIONS ARE PERMANENTLY BLOCKED!
                 └── Displays: "⚠️ कमाल २ महिन्यांची मर्यादा पूर्ण झाली आहे!"
                 └── Prompts Hardware Machine ID & Requires Valid License Key
```

#### नियमावली:
1. **स्थापनेची कायम नोंद**: कॉम्प्युटरवर सॉफ्टवेअर पहिल्यांदा सुरू केल्याची तारीख (`kk_install_date`) आपोआप नोंदवली जाते.
2. **+७ दिवस मुदतवाढ**: ऑपरेटर गरजेनुसार ७ दिवसांनी चाचणी वाढवू शकतो.
3. **कमाल २ महिने मर्यादा (६० दिवस)**: स्थापनेच्या तारखेपासून बरोबर ६० दिवसांनंतर पुढील सर्व चाचणी मुदतवाढ **कायमस्वरूपी ब्लॉक** होते आणि [Admin_Key_Generator.html](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Admin_Key_Generator.html) द्वारे निर्मित अधिकृत परवाना की प्रविष्ट करणे अनिवार्य होते.

---

### 🖥️ 4. Machine-Specific Configuration Sync (`machines.json`)

वेगवेगळ्या कृषी केंद्रांच्या कॉम्प्युटरसाठी सानुकूल सेटिंग्ज ठेवण्याची पद्धत:
1. [machines.json](https://raw.githubusercontent.com/rupam13/krishi-kendra/main/machines.json) मध्ये त्या मशीनच्या आयडीनुसार सेटिंग्ज नोंदवा:
   ```json
   {
     "KK-7B9A-4F12": {
       "kendraName": "श्री स्वामी समर्थ कृषी सेवा केंद्र",
       "tagline": "सर्व प्रकारची रासायनिक खते, दर्जेदार बियाणे व कीटकनाशके विक्रेते",
       "ownerName": "रामदास पाटील",
       "phone": "9822123456",
       "address": "गांधी चौक, चाळीसगाव",
       "gstin": "27AAAAA0000A1Z5",
       "fertLic": "FL/MH/2026/1029",
       "pestLic": "PL/MH/2026/8834",
       "seedLic": "SL/MH/2026/4412",
       "upiId": "swamisamarth@okaxis"
     }
   }
   ```
2. क्लायंट कॉम्प्युटरवर **"🔄 Sync Machine Settings from GitHub"** वर क्लिक करताच त्या मशीनचे नाव, पत्ता, GSTIN आणि परवाने थेट केंद्र सेटिंग्जच्या फॉर्ममध्ये आपोआप भरले जातात!

---

### 📦 5. स्थानिक फाइल्स (Local Files in Workspace)

- [Krishi_Kendra_Billing.html](file:///C:/Users/rupam/.gemini/antigravity-cli/brain/ba6e8a7f-fa09-4a8e-8b7f-bfcb7ac832b9/Krishi_Kendra_Billing.html)
- [Admin_Key_Generator.html](file:///C:/Users/rupam/.gemini/antigravity-cli/brain/ba6e8a7f-fa09-4a8e-8b7f-bfcb7ac832b9/Admin_Key_Generator.html)
- [Launch_Krishi_Kendra_Billing.bat](file:///C:/Users/rupam/.gemini/antigravity-cli/brain/ba6e8a7f-fa09-4a8e-8b7f-bfcb7ac832b9/Launch_Krishi_Kendra_Billing.bat)
- [version.json](file:///C:/Users/rupam/.gemini/antigravity-cli/brain/ba6e8a7f-fa09-4a8e-8b7f-bfcb7ac832b9/version.json)
- [machines.json](file:///C:/Users/rupam/.gemini/antigravity-cli/brain/ba6e8a7f-fa09-4a8e-8b7f-bfcb7ac832b9/machines.json)
- [README.md](file:///C:/Users/rupam/.gemini/antigravity-cli/brain/ba6e8a7f-fa09-4a8e-8b7f-bfcb7ac832b9/krishi-kendra-repo/README.md)
