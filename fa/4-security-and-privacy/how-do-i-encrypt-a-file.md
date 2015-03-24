# چگونه از اطلاعاتم محافظت کنم (IOCipher دیسک های مجازی کدگزاری شده)

منبع:  [Guardian Project](https://guardianproject.info/code/iocipher/)

IOCipher یک دیسک مجازی رمزگزاری برای برنامه های اندروید ارایه می ده بدون نیاز دستگاه به وصل بودن جایی. این از یک کپی برابر اصل استاندارد java.io API برای کار کردن با فایل ها استفاده می کنه٬ پس برنامه نویسان از قبل می دونن چجوری باهاش کار کنن. فقط تحویل رمز عبور و باز کردن دیسک های مجازی چیزیه که بین برنامه نویسان و فایل های رمزگزاری ذخیره شده هست. این بر اساس و SQLCipher است. (http://sqlcipher.net/).

IOCipher را میشه گفت فامیل SQLCiphe برای اندرویده  و همچنین این بر اساس SQLCipher و استفاده اش و کاربردش برای همونطور مثل repurposing  API می مونه که برنامه نویسان از قبل می دونن.  این در بالای libsqlfs ساخته شده٬ که یک  اجرای filesystem   را در SQL که FUSE API نشان می ده. 

## ویژگی ها 
- Secure transparent app-level virtual encrypted disk
- نیاز نداره به جایی وصل باشه 
* سه را جدید برای یاد گرفتن :  `VirtualFileSystem.get(), VirtualFileSystem.mount(dbFile, password), and VirtualFileSystem.unmount()`
- از نسخه  2.1 و یا پایین تر اندروید پشتیبانی می کنه
- مجوز گرفتن با LGPL v3+

## اضافه کردن  IOCipher  برنامتون

الان باید این کارها در انجام بدی تا کدات از فضای رمزگزاری شده ی IOCipher برای فضای فایل برنامه هات استفاده کنند : 

1. مدیرت رمز غبور با استفاده از Cacheword یا whatever  
1. گرفتن VFS singleton با استفاده از VirtualFileSystem.get()
1.  انبوهی  از رمز فایل پایگاه داده ها با استفاده از VirtualFileSystem.mount(dbFile, password)
1. replace the relevant java.io import statements with info.guardianproject.iocipher, e.g.:
```
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
```

برای اطلاعات بیشتر این ها ببینید  [IOCipherExample](https://github.com/guardianproject/IOCipherExample), [IOCipherThreadTest](https://github.com/guardianproject/IOCipherThreadTest), and [IOCipherTests](https://github.com/guardianproject/IOCipherTests). To start from scratch, follow [the instructions on starting with SQLCipher-for-Android](https://www.zetetic.net/sqlcipher/sqlcipher-for-android/), then download IOCipher and add it to the libs/ folder of that new project.

## دانلود 
اینجا می توانی IOCipher jar و فایل های مادری کتابخانه ای  را دریافت کنی ٬‌آماده انداختن در پروژه ات ( برای MIPS نیاز داری  که از منبعش بسازی ): 

* [IOCipher-v0.2.zip](https://guardianproject.info/releases/IOCipher-v0.3.zip)
* [detached gpg signature](https://guardianproject.info/releases/IOCipher-v0.3.zip.sig)
* MD5: d4fdec3ecfaee96277eaa0372db092ce
* SHA1: f89509b802f2982e62b3e5b31cb90266e95262a0

If you are interested in experimenting with the underlying FUSE library, you can download the optional libsqlfs source tarball:

* [libsqlfs-1.3.tar.bz2](https://guardianproject.info/releases/libsqlfs-1.3.1.tar.bz2)
* [detached GPG signature](https://guardianproject.info/releases/libsqlfs-1.3.1.tar.bz2.sig)
* MD5: 867d60bcd1cb19f09b1fd3b7112767ac
* SHA1: 3d5fcd3eef9bf07093987ae98951ab7a4525393a

## فضای منابع کدها 
* تنها چیزی که برای پروژه نیاز داریی : https://github.com/guardianproject/IOCipher


## اختیاری: 
مجموعه تست : https://github.com/guardianproject/IOCipherTests
یک نمونه ساده برای مدیرت فایل برنامه ها : https://github.com/guardianproject/IOCipherExample
یک تست خیلی ساده برای برنامه : https://github.com/guardianproject/IOCipherThreadTest
هسته اصلی : https://github.com/guardianproject/libsqlfs

## استفاده از نوشته ها
* فقط از یک mount فعال برای هر برنامه پشتیبانی می شه. 
* single thread/sequential access is the preferred way of using IOCipher
* multi-threaded access possible (potentially unstable under extremely high write load)
*  الان VFS برای بهینه سازی عملکرد  دارای beginTransaction و completeTransaction هست 
قسمتی از  java.io هنوز ساپورت نمی شه : vectored I/O, memory-mapped files 

## گزارش دادن مشکلات 
لطفا  اگر مشکلی یا ایرادی داشتین با این کتابخانه به ما اطلاع بدین !‌ ما منتظر نظرات شما هستیم. این به ما کمک می کنه که مشکلات و ایرادات این برنامه را رفع کنیم. در ضمن خوشحال می شیم اگر شما ایده دارید یا راه حلی برای بهبود برنامه پیدا کردید با ما در میان بزارید. 

[گزارش مشکلات و ایرادات ] (https://dev.guardianproject.info/projects/iocipher/issues/new)