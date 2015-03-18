# How Do I Protect My App's Data?

intro foo

## Protecting App Databases

## Securing and Hiding Multimedia files and Documents

## Defending Against Network Attacks


CipherKit: We have 3 tools designed for Android app developers to make apps that are able to ensure better encryption and anonymity:

SQLCipher: Encrypted Database
SQLCipher is an SQLite extension that provides transparent 256-bit AES encryption of database files. It mirrors the standard android.database API. Pages are encrypted before being written to disk and are decrypted when read back.
SQLCipher GitHub Code

IOCipher: Encrypted Virtual Disk
IOCipher is a virtual encrypted disk for apps without requiring the device to be rooted. It uses a clone of the standard java.io API for working with files. Just password handling & opening the virtual disk are what stand between developers and fully encrypted file storage. It is based on libsqlfs and SQLCipher.
IOCipher Source Code

NetCipher: Encrypted Network Data & Tor Integration
NetCipher is improving network security. It provides a strong TLS/SSL verifier to help mitigate weaknesses in the certificate authority system. It eases the implementation of supporting SOCKS and HTTP proxies into applications and also supports onion routing for anonymity and traffic surveillance circumvention.
