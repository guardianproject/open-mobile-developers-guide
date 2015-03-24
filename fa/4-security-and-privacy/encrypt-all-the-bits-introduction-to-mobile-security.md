#رمزگزاری تمام بیت ها - آشنایی با امنیت موبایل 

این یک توضیح از رمزگزاری برای تمام بیت هاست(https://docs.google.com/presentation/d/1Jgg405aEvDwkm_f65Z7x3qin_vGqzDNsk_p3cPB4VZc/edit#slide=id.g181a3a731_0335) presentation.

## قصد برای اجرا 

## قسمت (جلسه) بررسی کلی 
  نگاه اجمالی بر برنامه ها و کتابخانه توسعه دهندگان  پروژه گاردین (30m)
  مدل های تهدید کننده و داستان های  جنگی : گفتگوی آزاد در مورد ریسک٬ بیم و نیاز های امنیتی (30m)
  - رمزگزاری بانک های اطلاعاتی:  امن سازی داده های ساخته شده در فعالیت ها٬ خدمات و ارائه دهندگان محتوا (1hr)
  - رمزگزاری فایل ها: امن سازی فایل های کوچک تا بزرگ به دلخواه  (30m)
  - شبکه امن:‌ دفاع کردن  در مقابل مرد میانی- خنثی کردن SSL, فیلتر و چیزهای دیگر (30m)
  - Hands-On Implementation time for sample work or debugging your own apps with new security features (1.5hr)

## رمزگزاری
مقدمه ای کوتاه - معرفی خیلی سریع 

رمزگزاری چی هست ؟
  - متن + الگوریتم + کلید = متن رمزگزاری شده 
  - متقارن یا نامتقارن٬‌ شخصی یا عمومی 
  - قابل پیشبینی نبودن: واقعی یا غیر واقعی 
  وسایل مرسوم برای کد نویسی : OpenSSL, PGP (GnuPG!), BouncyCastle

رمگزاری داخلی اندروید  
  - HTTPS / TLS / SSL
  - javax.crypto “BouncyCastle”
  SSL باز 
  - دیسک رمزگزای شده  کامل
  - کلید واژه اندروید  (> API 18)

### جعبه رمز 
https://guardianproject.info/code

###  پلتفرم CipherKit 
عکس را اینجا وارد کن 

### کتاب خانه برنامه نویسان "CipherKit" 
CipherKit برای برنامه نویسان اپ در اندروید طراحی شده  تا برنامه های خودشون را مطمن بکنن برای  حفظ حریم خصوصی٬‌ امنیت و ناشناس ماندن

#### SQLCipher: رمزگزاری پایگاه داده ها  
SQLCipher یک SQLite خارجی هست که وظیفش شفاف سازی  256-bit AES برای فایل ها در بانک های اطلاعاتی  رمگزاری شده است. صفحه ها رمزگزاری می شند قبل از اینکه چیزی نوشته بشه  در دیسک ها و بعدتر رمزگشایی می شند وقتی که خونده می شن. 

#### IOCipher: رمزگزاری دیسک های مجازی 
IOCipher یک دیسک رمزگزاری شده هست برای برنامه ها بدون اینکه دستگاه نیاز به روت داشته باشه.  این از یک کلون معمولی  java.io API برای کار کردن با فایل ها استفاده می کنه. فقط دسترسی  به رمز عبور و باز کردن صفحه های مجازی چیزیه که بین برنامه نویسان هست و تمام فایل ها بصورت رمزگزاری می مونه. این بر پایه libsqlfs و SQLCipher هست. 

#### NetCipher: رمزگزاری ها شبکه ی اطلاعات و  یک پارچه سازی تور 
NetCipher یک بهبود دهنده امنیت شبکه است. اون یک تایید کننده TLS/SSL برای کمک به گواهینامه های ضعیف در سیستم هست. 

### بزار یک پله به عقب برگردیم 
(تا کشف کنیم که نگرانی ما از کجاست)

## پایه مدلسازی تهدید
از چی نگرانی ؟ aka Possible Attack Vectors
چه نوع اطلاعاتی  جمع آوری می کنی یا چه  سرویسی ارایه می دی که ممکنه وسوسه انگیز باشه و یا در در معرض قرار بگیره ؟ 
آیا  برای تو امکان خطری وجود داره که از دستگاه های دیگه بیاد یا حتی از برنامه ها٬ دسترسی فیزیکی یا استفاده از شبکه ؟ 

## داستان های جنگی ؟ 
تا به حال شده که کارت٬ کاربراتون یا زندگی مشتری هاتون تحت تاثیر بد افزار ها یا مشکلات امنیتی قرار بگیره ؟ 
* آیا  کارت توری هست که به دلیل شغلی که درس هستی  نیاز به امنیت و پنهان بودن داری  ؟  
آیا در منطقه ای از جهان هستی که  کاربران ممکنه تحت حمله قرار بگیرند و یا  اینکه نقض حریم خصوصی اتفاق  بیافته ؟ 

##ساختار خطر 
* تحلیل قانونی
* ریشه ریابی / جیل بریک 
* مشکلات OS
* بروز رسانی های کم یاب
*  فضاهای قابل جابجایی 
* خدمات کلود  
* هدف حملات 
* به اشتراک گذاشتن دستگاه 

###   بدافزار های در حال تکامل 
 بدافزار های در حال تکامل :http://blog.trendmicro.com/trendlabs-security-intelligence/mobile-malware-high-risk-apps-hit-1m-mark/

### اطلاعات ذخیره شده در یک متن ساده 
http://elifelog.org/book/iphone-gps-cache-data

### Forensic Extraction
دستگاه های "Universal Forensic Extraction " به راحتی و خیلی سریع می تونن همه اطلاعات را از روی موبایل کپی کنند. 

اگر دستگاهی مثل این تو دست آدم نادرست بیفته٬ به راحتی می تونه همه اطلاعات رمزگشایی نشده در دستگاه را بدزده 

http://www.cellebrite.com/mobile-forensics

### حمله مرد میانی 
حمله مرد میانی : http://thehackernews.com/2013/03/t-mobile-wi-fi-calling-app-vulnerable.html

## ظاهر قابل اعتماد 

| شناسه | اسم | توضیحات |
| ---- | ---- | ---- |
| 1 | صاحب موبایل باشید | اپراتور اول موبایل. مطمن باشید از اینکه به دستگاهتون دسترسی کامل دارید ٫‌ همچنین امنه و رمز یا کد  دارید برای وارد شدن بهش  
| 2 | Detainer / criminal / bad actor | An authority figure or criminal who has or will be detaining the Owner[1]; has access to mobile phone. may have only manual/brute force access, or could have more sophisticated forensic extraction tools. | 
| 3 | اپراتور شبکه موبایل | دسترسی به تماس ها و پیام ها (فرستنده / دریافت کننده/ محتویات پیام) و برج های مخابراتی که با اطلاعات سر و کار دارند (مکان های سخت)|
| 4 | Employer, family or support organization; | May know the Owner[1]'s PIN/password, but otherwise has no access to data or network information; On the receiving end of an emergency message |
| 5 | Malicious App / Backdoor / Malware / Forensics App | Access to some or all of the the Owner[1]'s data depending upon app data permissions and encryption, as well as how full the backdoor is. Authorization is often required by the user to allow apps to access data. |

## ویژگی مثبت 

| شناسه  | اسم | توضیحات | میزان اعتماد |
| ---- | ---- | ---- | --- |
| 1 | شخصی | اطلاعات | اسامی٬‌ ایمیل ها٬ شماره های تماس٬‌ رخداد های توی تقویم٬‌ ذخیره شده روی  حافظه داخلی  [1] صاحب  [5] برنامه های مخرب (بجای برنامه های تایید شده)
| 2 | ارتباط داده ها | پیام های کوتاه٬ ایمل٬‌ تماس های دریافتی٬‌ خیلی بیشتر این ها در حافظه داخلی ذخیره می شن [1] صاحب , [3] اپراتور , [5]  برنامه های مخرب (بجای برنامه های تایید شده)
| 3 | اطلاعات کاربردی | اطلاعات شخصی ذخیره شده در مرورگرها٬ گفتگوها٬‌ برنامه های شبکه اجتماعی٬‌ همه در هر دو حافظه ذخیره می شوند;  [1] صاحب٬‌ [3] اپراتور ( اگر HTTP/S or SSL نیست)٬‌ , [5]  برنامه های مخرب (بجای برنامه های تایید شده)
| 4 |  فایل های رسانه ای | کاربران تولید می کنن یا  عکس ٬‌ ویدیو و موسیقی دانلود می کنن. اینها معمولا در کارت ها حافظه ذخیره می شوند. [1] صاحب٬‌ [5]  برنامه های مخرب (بجای برنامه های تایید شده)

## لیست خطر STRIDE 
| نوع | نمونه ها|
| ---- | ---- |
|کلک زدن| - کسی که توسط قانون ازش نگهداری میشه[2]برنامه های مخرب (بجای برنامه های تایید شده) [5] ممکنه تلاش کنن کنترل موبایل را به دست بگیریند یا خودشون را بجای صاحب موبایل معرفی کنند [1] 
|دستکاری کردن | برنامه های مخرب [5] می تون ساختار اطلاعات را بر روی دستگاه عوض کنند.  
| رد کردن | | برنامه های مخرب [5] یا تروجان ها برنامه را از کار بندازن   اپراتور[3]  حتی شاید بصورت دایم پیام ها را کنترل کنند و اطلاعات را به اشخاص مخرب بدن [2] |
| Information Disclosure | Detainer[2] could have full access to Assets stored on the mobile device; - Detainer[2] may have physical and logical forensic data extraction tools that can override password controls on device and read from "wiped" storage; - Operator[3] may learn identity of Support Org[4] |
| عدم دریافت سرویس | - شاید  ارسال و دریافت ارتباطات   قطع بشه از طرف اپراتور [3]; - شاید موبایل از طرف اپراتور از کار بیفته [3] یا برنامه های مخرب [5]  
| Elevation of Privilege | - Malicious App [5] launches insecured intents or exploits known bug; - Detainer[2] or Operator[3] may be able to impersonate the Owner[1] |

## کنترل های امنیتی / کاهش خطر 
| تایپ | تاکتیک ها |
| ---- | ---- | 
| Authentication (vs. Spoofing) | - Create a a non obvious passphrase for use in app - Lock screen of your mobile phone using passphrase or PIN |
| Authorization & Auditing (vs Tampering, Repudiation, Elevation of Priv) | - Do not install any unnecessary, third-party mobile apps with network access; - Scan your mobile device using available malware tools; - Install a firewall or network connection monitoring utility; - Use a non-real name registered SIM card and mobile phone |
| Cryptography and Identity Protection (vs Information Disclosure) | - For extra sensitive data, use an app that supports an and password authentication and encrypted database; - Use a mobile OS with disk and memory card encryption; - Use only browser-based HTTPS services that do not store data locally;- Do not store or save web service passwords on your mobile phone |
| Alternate Communications (vs Denial of Service) | - Use VPNs or Tor proxying software to hide source IP and traffic; - Use apps/services that work in WIFI only mode if data service disabled; - Use apps that allow device-to-device data sharing | 

## SQLCipher 
رمزگزاری بانک داده ها 

SQLCipher یک SQLite خارجی هست که وظیفش شفاف سازی  256-bit AES برای فایل ها در بانک های اطلاعاتی  رمگزاری شده است. صفحه ها رمزگزاری می شند قبل از اینکه چیزی نوشته بشه  در دیسک ها و بعدتر رمزگشایی می شند وقتی که خونده می شن. 

- SQLCipher ردپای خیلی کمی داره و خیلی خوب عمل می کنه برای محافظت کردن از برنامه های بانک اطلاعاتی و همچنین خیلی خوبه برای پیشرفت موبایل 
- Blazing fast performance with as little as 5-15% overhead for encryption
-  100 درصد اطلاعات در بانک اطلاعات رمزگزاری شده
با استفاده از شیوه هاب خوب امنیتی (CBC mode, key derivation) 
- Zero-configuration and application level cryptography
- Algorithms provided by the peer reviewed OpenSSL crypto library.

###  پلتفرم CipherKit 
IMAGE

###  دفاع در عمق
حمله کردن ها رل سخت کن با  چند لایه امنیتی 

###  اصول حداقل دسترسی 
در دسترسی به  دستگاه نباید به همه برنامه و اطلاعات دسترسی داشته باشه 

### امنیت اطلاعات 
حداقل کردن تاثیر دسترسی های بدون اجازه به دستگاه روشن یا خاموش

### استراتژی
1. تایید هویت 
1. رمزگزاری 
1. اعتبار

## SQLite vs. SQLCipher

```
~ sjlombardo$ hex dump -C sqlite.db
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

~ $ hex dump -C sqlite.db
00000000 84 d1 36 18 eb b5 82 90 c4 70 0d ee 43 cb 61 87 |.?6.?..?p.?C?a.|
00000010 91 42 3c cd 55 24 ab c6 c4 1d c6 67 b4 e3 96 bb |.B?..?|
00000bf0 8e 99 ee 28 23 43 ab a4 97 cd 63 42 8a 8e 7c c6 |..?(#C??.?cB..|?|

~ $ sqlite3 sqlcipher.db
sqlite> SELECT * FROM t1;
خطا: فایل رمزگزاری شده در بانک اطلاعاتی نیست 
```

https://github.com/sqlcipher/android-database-sqlcipher

```
وارد کن : net.sqlcipher.database.SQLiteDatabase;

SQLiteDatabase.loadLibs(this);

SQLiteDatabase db = eventsData.getWritableDatabase(“my password”);
```

### راه حل ساده 
ما یک بسته   SDK ساده را برای برنامه نویسان اندروید درست کردیم تا SQLCipher  را  در سه مرحله به برنامه هاشون اضافه کنن : 

* اضافه کردن یک  sqlcipher.ja و چندتا دیگه. تا  فهرست libs برنامه ها
* Update the import path from android.database.sqlite.* to info.guardianproject.database.sqlite.* in any source files that reference it. The original android.database.Cursor can still be used unchanged.
* Init the database in onCreate() and pass a variable argument to the open database method with a password*:
  - SQLiteDatabase.loadLibs(this); //first init the db libraries with the context
  - SQLiteOpenHelper.getWritableDatabase(“thisismysecret”):

### ویژگی های SQLCipher 
- AES 256 CBC
- Random IVs
- Random salt
- Key Derivation
- MAC
SSL باز 
- Fast startup
- No size limit

### چطور کار می کنه ؟
- پیگری کد ها 
- Key Derivation
- رمزگزاری
- MAC

### پیشرفته 
- PRAGMA rekey
- PRAGMA cipher
- PRAGMA kdf_iter
- PRAGMA cipher_page_size
- PRAGMA cipher_use_hmac
- ATTACH
- sqlcipher_export()

## IOCipher 
رمزگزاری سامانه فایل های مجازی 

IOCipher یک دیسک مجازی رمزگزاری برای برنامه های اندروید ارایه می ده بدون نیاز دستگاه به وصل بودن جایی. این از یک کپی برابر اصل استاندارد  java.io API  برای کار کردن با فایل ها استفاده می کنه٬ پس برنامه نویسان از قبل می دونن چجوری باهاش کار کنن. فقط تحویل رمز عبور و باز کردن دیسک های مجازی چیزیه که بین برنامه نویسان و فایل های رمزگزاری ذخیره شده هست. این بر اساس و SQLCipher است.

IOCipher is a cousin to SQLCipher-for-Android since it is also based on SQLCipher and uses the same approach of repurposing an API that developers already know well. It is built on top of libsqlfs, a filesystem implemented in SQL that exposes a FUSE API.

###  پلتفرم CipherKit 
*image* 

### IOCipher: ویژیگی های اصلی 
* Secure transparent app-level virtual encrypted disk
*نیاز نداره به جایی وصل باشه 
* سه را جدید برای یاد گرفتن : new VirtualFileSystem(dbFile), VirtualFileSystem.mount(password), and VirtualFileSystem.unmount()
* پشتیبانی کردن از اندروید نسخه 2.1 و پایینتر
* مجوز گرفتن با  LGPL v3+

### IOCipher: The Stack
info.guardianproject.iocipher
   - Java/JNI wrapper API
* LibSQLFS / FUSE
   - Virtual Filesystem that maps to SQL schema / structured database
* SQLCipher
   لایه های رمزگزاری شده برای SQLite
* SQLite
   - اساس مکانیزم ذخیره سازی 

### اضافه کردن IOCipher به برنامه
- مدیریت کردن رمز عبور 
- متصل کردن دیسک رمزگزاری شده با استفاده از VirtualFileSystem(dbFile)
- نصب با  استفاده از رمز عبور VirtualFileSystem.mount(password)
- replace the relevant java.io import statements withinfo.guardianproject.iocipher, e.g.:
- import info.guardianproject.iocipher.File;
 - import info.guardianproject.iocipher.FileOutputStream;
 - import info.guardianproject.iocipher.FileReader;
 - import info.guardianproject.iocipher.IOCipherFileChannel;
 - import info.guardianproject.iocipher.VirtualFileSystem;
 - import java.io.FileNotFoundException;
 - import java.io.IOException;
 - import java.io.InputStream;
 - import java.nio.channels.Channels;
 - import java.nio.channels.ReadableByteChannel;

### نمونه IOCipher
https://github.com/guardianproject/IOCipherExample

```
import info.guardianproject.iocipher.File;
import info.guardianproject.iocipher.FileOutputStream;
import info.guardianproject.iocipher.VirtualFileSystem;

File dbFile = getDir("vfs", MODE_PRIVATE).getAbsolutePath() + "/myfiles.db";

vfs = new VirtualFileSystem(dbFile);


// TODO از رمز عبور سخت استفاده نکن! سریع رمزت را بزن!‌
vfs.mount("رمز عبور دورغیم");

File file = new File(dirPath);
File[] files = file.listFiles();
```

## CacheWord
مدیریت کلمه رمز امن  

CacheWord is an Android library project for passphrase caching and management. It helps app developers securely generate, store, and access secrets derived from a user's passphrase.
1. مدیریت کردن رازها:  
1. ذخیره سازی عبارات عبور: نگه داشتن رمزهای عبور در حافظه برای جلوگیری از وارد کردن اون بطور مکرر توسط کاربر 

###  پلتفرم CipherKit 
[Image]


### ویژگی های  CacheWord 
CacheWord مدیریت می کنه منبع اصلی٬ تایید کردن٬‌ مقاومت٬ ریست رمز عبور و کش کردن موارد مخفی اصلی در حافظه.
-  سرچشمه اصلی قوی (PBKDF2)
- امنیت فضای مخفی (AES-256 GCM)
- هشدار دادن مداوم: به کاربرا هشدار بده که اطلاعات برنامه هاشون باز هست
تنظیم مهلت زمانی: بعد از هر بار عدم استفاده خود برنامه بسته بشه
- پاک کردن دستی: کاربر بتونه به اجبار برنامه را ببنده 
- استفاده از منبع گواهی های اندروید بر 4.x اگر موجود هست -  هنوز عملی نشده. 

### مشکلات با اندروید 
[IMG]

###  راه حل CacheWord 
[IMG]

###  نمونه کد CacheWord
https://github.com/guardianproject/cacheword/tree/master/sample


```
public class CacheWordSampleActivity extends Activity implements ICacheWordSubscriber {
…
        mCacheWord = new CacheWordActivityHandler(this);

@Override
    public void onCacheWordLocked() {}

    @Override
    public void onCacheWordOpened() {
               // آوردن کلید رمز گزاری شده از  CacheWordService
        کلید مخفی  key = ((PassphraseSecrets) mCacheWord.getCachedSecrets()).getSecretKey();
    }

    @Override
 	public void onCacheWordUninitialized() {   
                mCacheWord.setCachedSecrets(PassphraseSecrets.initializeSecrets(
                        CacheWordSampleActivity.this, “my secret passphrase”));
            }
```

## NetCipher
شبکه امن 

###  پلتفرم CipherKit 
[image]

###  دلیل NetCipher :  3
1. *سوکت های قوی تر * : از طریق حمایت برای مجموعه های صحیح رمز٬‌ پین کردن و چیزهای دیگر٬ ما مطمنتون می کنیم که ارتباطات رمزگزاری شده شما به بهترین شکل ممکن قوی هستند. 
1. *Proxied Connection Support*: HTTP and SOCKS proxy connection support for HTTP and HTTP/S traffic through specific configuration of the Apache HTTPClient library
1. *OrbotHelper*: a utility class to support application integration with Orbot: Tor for Android. Check if its installed, running, etc.

### خطرات شبکه 
پرکسی تور 
[image]

### نمونه کد  NetCipher 
https://github.com/guardianproject/NetCipher

```
  OrbotHelper oc = new OrbotHelper(this);
        if (!oc.isOrbotInstalled())       
            oc.promptToInstall(this);        
        else if (!oc.isOrbotRunning())
             oc.requestOrbotStart(this);
        
  StrongHttpsClient httpclient = new StrongHttpsClient(getApplicationContext());

        if (pType == null)
            httpclient.useProxy(false, null, null, -1);
        else if (pType == Proxy.Type.SOCKS)
            httpclient.useProxy(true, "SOCKS", proxyHost, proxyPort);     
        else if (pType == Proxy.Type.HTTP)
            httpclient.useProxy(true, ConnRoutePNames.DEFAULT_PROXY, proxyHost, proxyPort);
```

## از اینجا 
https://guardianproject.info/contact

Guardian-Dev and SQLCipher mailing lists
IRC (freenode): #guardianproject
ردیابی  پروژه : https://dev.guardianproject.info

support@guardianproject.info