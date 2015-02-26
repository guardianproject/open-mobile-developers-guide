# SQLCipher: Encrypted Mobile Databases

## Introduction
In an environment where mobile data privacy is increasingly in the headlines, this project will make it easier than ever for mobile developers to properly secure their local application data, and in turn better protect the privacy of their users. The data stored by Android apps protected by this type of encryption will be less vulnerable to access by malicious apps, protected in case of device loss or theft, and highly resistant to mobile data forensics tools that are increasingly used to mass copy a mobile device during routine traffic stops.

SQLCipher is an SQLite extension that provides transparent 256-bit AES encryption of database files. To date, it has been open-sourced, sponsored and maintained by Zetetic LLC. In the mobile space, SQLCipher has enjoyed widespread use in Apple’s iOS, as well as Nokia / QT for quite some time. Given that Android by default provides integrated support for SQLite databases, our goal was to create an almost identical API for SQLCipher, so that developers of all skill level could use it, without a steep learning curve.

LEARN MORE AND DOWNLOAD: http://sqlcipher.net/open-source/
SOURCE CODE: https://github.com/sqlcipher/android-database-sqlcipher

## A Simple Example
A typical SQLite database in unencrypted, and visually parseable even as encoded text. The following example shows the difference between hexdumps of a standard SQLite db and one implementing SQLCipher.

$ hexdump -C sqlite.db
00000000 53 51 4c 69 74 65 20 66 6f 72 6d 61 74 20 33 00 |SQLite format 3.|
…
000003c0 65 74 32 74 32 03 43 52 45 41 54 45 20 54 41 42 |et2t2.CREATE TAB|
000003d0 4c 45 20 74 32 28 61 2c 62 29 24 01 06 17 11 11 |LE t2(a,b)$…..|
…
000007e0 20 74 68 65 20 73 68 6f 77 15 01 03 01 2f 01 6f | the show…./.o|
000007f0 6e 65 20 66 6f 72 20 74 68 65 20 6d 6f 6e 65 79 |ne for the money|

~ $ sqlite3 sqlcipher.db
sqlite> PRAGMA KEY=’test123′;
sqlite> CREATE TABLE t1(a,b);
sqlite> INSERT INTO t1(a,b) VALUES (‘one for the money’, ‘two for the show’);
sqlite> .quit

~ $ hexdump -C sqlite.db
00000000 84 d1 36 18 eb b5 82 90 c4 70 0d ee 43 cb 61 87 |.?6.?..?p.?C?a.|
00000010 91 42 3c cd 55 24 ab c6 c4 1d c6 67 b4 e3 96 bb |.B?..?|
00000bf0 8e 99 ee 28 23 43 ab a4 97 cd 63 42 8a 8e 7c c6 |..?(#C??.?cB..|?|

~ $ sqlite3 sqlcipher.db
sqlite> SELECT * FROM t1;
Error: file is encrypted or is not a database

(example courtesy of SQLCipher)

## Details for Developers
We’ve packaged up a very simple SDK for any Android developer to add SQLCipher into their app with the following three steps:

Add a single sqlcipher.jar and a few .so’s to the application libs directory
Update the import path from android.database.sqlite.* to info.guardianproject.database.sqlite.* in any source files that reference it. The original android.database.Cursor can still be used unchanged.
Init the database in onCreate() and pass a variable argument to the open database method with a password*:
SQLiteDatabase.loadLibs(this); //first init the db libraries with the context
SQLiteOpenHelper.getWritableDatabase(“thisismysecret”):
*Note: we are working on some dialog builder helper methods for password and PIN input, password caching, and other features that we would like to standardize across all applications that use SQLCipher.

## Sample Projects

## More Information
The Android support libraries are licensed under Apache 2.0, in line with the Android OS code on which they are based. The SQLCipher code itself is licensed under a BSD-style license from Zetetic LLC. Finally, the original SQLite code itself is in the public domain.