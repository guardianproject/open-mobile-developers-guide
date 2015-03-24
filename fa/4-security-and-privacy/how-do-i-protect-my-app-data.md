چطور اطلاعات برنامه خود را حفاظت کنیم
منبع: (https://guardianproject.info/code/sqlcipher)

مقدمه
در زمانی که حفظ حریم خصوصی در گوشیهای همراه در صدر خبرهاست، این پروژه امن کردن درست اطلاعات ذخیره شده توسط برنامکها رابرای برنامه نویسان هر چه آسانتر میکند، و همچنین حریم خصوصی کاربران را نیز حفظ میکند. اطلاعات ذخیره شده توسط این نوع از زمزگذاری دربرنامه های اندرویدی خصوصیتهایی از قبیل:  دسترسی کمتر بوسیله نرم افزار های متفرقه، حفاظت اطلاعات در برابر گم شدن یا دزدیده شدن گوشی، و در برابر برنامه های شنود که روزانه بیشتر و بیشتر از آنها برای کپی کردن داده های گوشیهای همراه در گذرگاهای مختلف استفاده میشود، را دارند.

سایفر اس کیو ال (http://sqlite.org/) افزونه ایست که قابلیت رمزگذاری با استاندارد 256-bit AES را به بانکهای اطلاعاتی میدهد. تا این زمان این افزونه با حمایت مالی و پشتیبانی (http://zetetic.net/)  بصورت کد منبع باز میباشد. در دنیای گوشیهای همراه، سایفر اس کیو ال با استقبال زیادی در گوشی های شرکت اپل (http://sqlcipher.net/documentation/ios.html) و نوکیا (http://www.qtcentre.org/wiki/index.php?title=Building_QSQLITE_driver_with_AES-256_encryption_support) مواجه شده. ناگفته نماند که اندروید بصورت پیش فرض از بانک اطلاعاتی اس کیو ال لایت پشتیبانی میکند، هدف ما ایجاد رابط برنامه نویسی نرم افزاری مشابه برای اس کیو ال سایفر است بطوری که هر برنامه نویسی با هر تجربه و دانشی بتواند با صرف زمانی کم برای یادگیری از آن استفاده کند.

دانلود کنید و بیشتر بخوانید: http://sqlcipher.net/open-source
منبع: (https://github.com/sqlcipher/android-database-sqlcipher)

یک مثال ساده
یک بانک اطلاعاتی اس کیو ال لایت بصورت ساده وبدون رمزگذاری است، حتی میتوان کدهای کامپایل شده توسط نرم افزار را مشاهد کرد و تمیز داد. مثال زیر فرق کد کامپایل شده توسط بانک اطلاعاتی اس کیو ال لایت ساده و اس کیو ال با افزونه اس کیو ال سایفر را نشان خواهد داد.

```
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
```

مثال از (http://sqlcipher.net/design)


جزییات برای برنامه نویس ها
ما کیت توسعه نرم افزاری برای برنامه نویسان اندروید را آماده کردیم که میتوانند اس کیو ال سایفر را به برنامه های خود در سه مرحله اضافه کنند: 

1.	Sqlcipher.jar و چندین فایل .so را به دایرکتوری libs برنامه اضافه کنید.
2. آدرس ایمپوت (Import Path) را از android.database.sqlite.* به info.guardianproject.database.sqlite.* در تمام فایل های منبعی که به آن اشاره شده غیر از android.database.Cursor عوض کنید.
3. بانک اطلاعاتی را در onCreate() مقدار دهی اولیه(Init)  کنید و با رمز 
   SQLiteDatabase.loadLibs(this);// اول  کتابخانه بانک اطلاعاتی را با داده ها مقدار دهی کنید.
   - SQLiteOpenHelper.getWritableDatabase(“thisismysecret”):

*توجه*: ما در حال کار بروی اضافه کردن متدهای راهنما (Dialog Builder Helper Methods) برای رمز عبور و شماره رمز(PIN)، بارگزاری رمزعبور (password caching)، و بقیه قابلیت ها که مایلیم در اس کیو ال سایفر استاندار سازی کنیم.  

##سازگاری
پیش نسخه برنامه نویسان دارای اس کیو ال سایفر V1 است، که با اندروید 2.2 و 2.3 سازگاری دارد، و همچنین فقط با یک پردازنده کار میکند( شما نمیتوانید مقدار Cursor را از سرویس دور {remote service}به activity بدهید.)

## Notepad + SQLCipher = Notepadbot
Notepadbot is a sample application pulled from the standard Android samples code and updated to use SQLCipher. You can browse the [source here](https://github.com/guardianproject/notepadbot) and download the [apk here](https://github.com/guardianproject/notepadbot/Notepadbot-0.0.1c-dev.apk/qr_code).

## Final Notes
It’s important to note that this project is not intended to be a distinct, long-term fork of SQLCipher. We’ve been working closely with the SQLCipher team at [Zetetic](http://zetetic.net/) and fully intent to closely maintain the project as SQLCipher evolves, re-integrating changes in upcoming releases such as [SQLCipher v2](https://github.com/sjlombardo/sqlcipher/tree/v2beta).

The Android support libraries are licensed under [Apache 2.0](https://github.com/guardianproject/android-database-sqlcipher/blob/master/LICENSE), in line with the Android OS code on which they are based. The SQLCipher code itself is licensed under a [BSD-style license from Zetetic LLC](https://github.com/guardianproject/android-database-sqlcipher/blob/master/SQLCIPHER_LICENSE). Finally, the original SQLite code itself is in the [public domain](http://www.sqlite.org/copyright.html).