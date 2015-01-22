# IOCipher Virtual Encrypted Disks

https://guardianproject.info/code/iocipher/

IOCipher provides a virtual encrypted disk for Android apps without requiring the device to be rooted. It uses a clone of the standard java.io API for working with files, so developers already know how to use it. Only password handling, and opening the virtual disk are what stand between the developer and working encrypted file storage. It is based on and SQLCipher.

IOCipher is a cousin to SQLCipher-for-Android since it is also based on SQLCipher and uses the same approach of repurposing an API that developers already know well. It is built on top of libsqlfs, a filesystem implemented in SQL that exposes a FUSE API.

## Features
- Secure transparent app-level virtual encrypted disk
- No root required
- Only three new methods to learn: VirtualFileSystem.get(), VirtualFileSystem.mount(dbFile, password), and VirtualFileSystem.unmount()
- Supports Android versions 2.1 and above
- Licensed under the LGPL v3+

## Adding IOCipher to your App

Here are the things you need to do in your code to make it use IOCipher encrypted storage for all of your app’s file storage:

manage the password using Cacheword or whatever
get the VFS singleton using VirtualFileSystem.get()
mount a database file with a password using VirtualFileSystem.mount(dbFile, password)
replace the relevant java.io import statements with info.guardianproject.iocipher, e.g.:
import info.guardianproject.iocipher.File;

import info.guardianproject.iocipher.FileOutputStream;

import info.guardianproject.iocipher.FileReader;

import info.guardianproject.iocipher.IOCipherFileChannel;

import info.guardianproject.iocipher.VirtualFileSystem;

import java.io.FileNotFoundException;

import java.io.IOException;

import java.io.InputStream;

import java.nio.channels.Channels;

import java.nio.channels.ReadableByteChannel;


For more detailed examples, see IOCipherExample, IOCipherThreadTest, and IOCipherTests. To start from scratch, follow the instructions on starting with SQLCipher-for-Android, then download IOCipher and add it to the libs/ folder of that new project.

## Downloads
Here you can get the complete IOCipher jar and native library files, ready to drop right into your project (for MIPS, you need to build from source):

IOCipher-v0.2.zip
detached gpg signature
MD5: d4fdec3ecfaee96277eaa0372db092ce
SHA1: f89509b802f2982e62b3e5b31cb90266e95262a0
If you are interested in experimenting with the underlying FUSE library, you can download the optional libsqlfs source tarball:

libsqlfs-1.3.tar.bz2
detached GPG signature
MD5: 867d60bcd1cb19f09b1fd3b7112767ac
SHA1: 3d5fcd3eef9bf07093987ae98951ab7a4525393a

## Source Code Repositories
all you need for your project: https://github.com/guardianproject/IOCipher
optional:
the test suite: https://github.com/guardianproject/IOCipherTests
a simple example file manager app: https://github.com/guardianproject/IOCipherExample
a very simple test app: https://github.com/guardianproject/IOCipherThreadTest
the core: https://github.com/guardianproject/libsqlfs

## Usage notes
only one active mount per-app is supported
single thread/sequential access is the preferred way of using IOCipher
multi-threaded access possible (potentially unstable under extremely high write load)
VFS now has beginTransaction and completeTransaction to optimize performance
parts of java.io not currently supported: vectored I/O, memory-mapped files
Reporting Bugs
Please report any bugs or issues that you have with this library! We want to hear from you. Help us improve this software by filing bug reports about any problem that you encounter. Feature requests and patches are also welcome!


