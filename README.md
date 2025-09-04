# NetScope — ASN → IPv4/IPv6 Prefix Lookup (CLI)

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Shell](https://img.shields.io/badge/made%20with-bash-blue)
![Version](https://img.shields.io/badge/version-1.1-orange)

**Founder:** p4oT09  
**Telegram:** [Channel](https://t.me/SecretSubjectChannel) • [Group](https://t.me/SecretSubjectBD) • [Contact](https://t.me/p4oT09)

## ✅ কী করে
- ASN দিলে APNIC থেকে ISP–র **পূর্ণ নাম** বের করে  
- RADB থেকে সব **IPv4 (`route:`)** / **IPv6 (`route6:`)** প্রিফিক্স আনে  
- ফাইলে সেভ: `ISP_Full_Name_ipv4.txt` / `ISP_Full_Name_ipv6.txt`

## 🖥️ কোথায় চলে
- **Android Termux**, **Ubuntu/Debian/Kali/WSL**, **macOS** (Homebrew `whois` দরকার)

> **Dependencies:** `whois`, `awk`, `sort`

## 📦 ZIP থেকে ইনস্টল
```bash
unzip NetScope-*.zip
cd netscope
./install.sh
```

## 🚀 ব্যবহার
```bash
netscope AS135341            # IPv4 (ডিফল্ট)
netscope AS135341 --ipv6     # শুধু IPv6
netscope AS135341 --both     # IPv4 + IPv6
netscope -h                  # হেল্প
```

## 🗑️ আনইনস্টল
```bash
sudo rm -f /usr/local/bin/netscope      # Termux: rm -f $PREFIX/bin/netscope
```

## 🪪 লাইসেন্স
MIT — বিস্তারিত দেখুন [LICENSE](LICENSE)।
