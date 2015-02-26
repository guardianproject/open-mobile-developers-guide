# Encrypt all the bits - introduction to mobile security

This is a paraphrase of [Encrypt all the bits](https://docs.google.com/presentation/d/1Jgg405aEvDwkm_f65Z7x3qin_vGqzDNsk_p3cPB4VZc/edit#slide=id.g181a3a731_0335) presentation.

## Intention vs Execution

## Session Overview
  - Overview of Guardian Project Apps & Developer Libraries (30m)
  - Threat Models and War Stories: Open Discussion about Risks, Fears and Security Needs (30m)
  - Encrypted Databases: securing structured data in activities, services and content providers (1hr)
  - Encrypted Files: securing arbitrary files from small to large (30m)
  - Secured Networking: defending against man-in-the-middle, SSL stripping, filtering and more (30m)
  - Hands-On Implementation time for sample work or debugging your own apps with new security features (1.5hr)

## Encryption
a very quick introduction

### What is Encryption?
  - Plaintext + Algorithm + Key =Ciphertext
  - Symmetric vs Asymmetric, Private vs Public
  - Randomness: Actual vs Pseudo
  - Common Cryptography Tools: OpenSSL, PGP (GnuPG!), BouncyCastle

### Android Built-in Encryption 
  - HTTPS / TLS / SSL
  - javax.crypto “BouncyCastle”
  - OpenSSL
  - Full Disk Encryption
  - Android KeyChain ( > API 18)

### CipherKit
https://guardianproject.info/code

### CipherKit “Platform”
Insert image here

### "CipherKit" Dev Libraries
CipherKit is designed for Android app developers to make apps that are able to ensure better privacy, security and anonymity

#### SQLCipher: Encrypted Database
SQLCipher is an SQLite extension that provides transparent 256-bit AES encryption of database files. It mirrors the standard android.database API. Pages are encrypted before being written to disk and are decrypted when read back.

#### IOCipher: Encrypted Virtual Disk
IOCipher is a virtual encrypted disk for apps without requiring the device to be rooted. It uses a clone of the standard java.io API for working with files. Just password handling & opening the virtual disk are what stand between developers and fully encrypted file storage. It is based on libsqlfs and SQLCipher.

#### NetCipher: Encrypted Network Data & Tor Integration
NetCipher is improving network security. It provides a strong TLS/SSL verifier to help mitigate weaknesses in the certificate authority system. It eases the implementation of supporting SOCKS and HTTP proxies into applications and also supports onion routing for anonymity and traffic surveillance circumvention.

### Let’s take a step back...
(to figure out what it is we are worried about)

## Basic Threat Modeling
* “What are you worried about?” aka Possible Attack Vectors
* What data are you collecting or services are you providing that might be enticing or exposed?
* Are the potential threats you face coming from the device (other apps or physical access) or the network?

## War Stories?
* Have your apps, your business or your users or customers lives or businesses been affected by malware or security breaches?
* Do you work in an industry that has specific requirements related to security and privacy?
* Do you target a region of the world where users might be more exposed to attack, surveillance or privacy violations?

## Threat Landscape
* Forensic Analysis
* Rooting / Jail breaking
* OS Issues
* Infrequent Updates
* Removable Storage
* Cloud Services
* Targeted Attacks
* Device Sharing

### Malware is on the rise
Malware on the rise: http://blog.trendmicro.com/trendlabs-security-intelligence/mobile-malware-high-risk-apps-hit-1m-mark/

### Cached GPS data stored in plain text
http://elifelog.org/book/iphone-gps-cache-data

### Forensic Extraction
"Universal Forensic Extraction Devices" can quickly and easily copy all of the data from a mobile phone.

If tools like these fall into the wrong hands, it is easy to assume any unencrypted data on a device can be easily stolen.

http://www.cellebrite.com/mobile-forensics

### Man in the middle 
Man-in-the-Middle: http://thehackernews.com/2013/03/t-mobile-wi-fi-calling-app-vulnerable.html

## Trust Landscape

| ID | Name | Description |
| - | - | - |
| 1 | Owner of the mobile phone | The primary operator of the mobile device. Assumed to have full access to the device, potentially secured with a PIN/password screen. |
| 2 | Detainer / criminal / bad actor | An authority figure or criminal who has or will be detaining the Owner[1]; has access to mobile phone. may have only manual/brute force access, or could have more sophisticated forensic extraction tools. | 