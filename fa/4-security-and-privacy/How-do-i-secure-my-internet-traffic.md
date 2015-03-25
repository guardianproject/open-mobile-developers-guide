# چطوری ترافیک اینترنتم را امن کنم؟ (NetCipher) 

منبع:  [Guardian Project](https://guardianproject.info/code/netcipher/)

## TLS بهتر و یکپارچه سازی برنامه های تور 

این یک کتابخانه اندروید که ابزار های متفاوت را برای بهبود امنیت شبکه در برنامه های موبایل ارايه می دهد. اسم پیاز نتنها از ریشه های پیاز گرفته شده که تور از این ایده برای گمنام موندن و مقاومت در برابر نظارت ترافیک استفاده کرده بلکه از ایده چند لایه بودن امنیتی برای برنامه ها استفاده می کنه. 

جزییات بیشتری که این کتابخانه می تواند ارائه کند:

1. سوکت قویتر: با ساپورت صحیح از cipher suites٬ پین کردن و بیشتر٬‌ما  تلاش می کنیم تا ارتباطات رمزگزاری شده شما بسیار قویترین شکل ممکن باشه. 
1.ساپورت ارتباطات پروکسی:  ساپورت از HTTP و SOCKS پروکسی برای HTTP and SOCKS از طریق پیکربندی خاص  برای  Apache HTTPClient library
1. OrbotHelper: یک ابزار سودمند برای حمایت از یکپارچه سازی با Orbot: تور برای اندروید. چک کنید اگر نصب شده و کار می کنه. 

**لازم به ذکر است ** شما می تونید از این کتابخانه بدون  Orbot/Tor استفاده کنید ولی ما فکر می کنیم که اگر از ارتباطات TLS/SSL قوی با تور استفاده کنین  بهترین چیز تو دنیا می تونه بشه. 

*این کتابخانه رسما OnionKit  نام گرفته بود –  https://github.com/guardianproject/onionkit*

## سوکت قویتر 

برنامه سازان می تونند خودشون CACert store درست کنن با استفاده از اطلاعات  ما در  پروژه CACertMan  : https://github.com/guardianproject/cacert

این می تونه در ترکیبی از Android Pinning و MemorizingTrustManager  استفاده بشه٬‌ برای ساپورت کردن  کاربران نادیده گرفته شده برای گواهی های بدون اعتبار. 

## ارتباطات پروکسی 

وقتی که Orbot با موفقیت به شبکه تور وصل شد٬‌ دو سرور پروکسی ارايه می ده که روی هاست های محلی فعال هستند و برنامه ها می تونند ترافیک خودشون اینجوری منتقل کنند. 

HTTP Proxy: localhost:8118 SOCKS 4/5 Proxy: localhost:9050

The sample project shows the basics of how to use this library to open sockets and make HTTP requests via the SOCKS and HTTP proxies available from Orbot The standard Apache HTTPClient libraries provide calls to setup proxying. This sample code demonstrates that. All applications using the SOCKS proxy should not resolve their DNS locally, and instead should pass the hostnames through the SOCKS proxy.

## کمک رسان Orbot
بهتون یک کمک رسان ساده ارائه می ده اگر Orbot (یا تور برای آندروید) نصب کردید و به چه در حاضر اجرا باشه یا نه. به اپلیکیشنت اجازه درخواست شروع Orbot را می ده (چه کاربر اون را فعال کرده باشه یا نه). در آخر این می تونه خیلی سریع به  Orbot را نصب کنید٬ چه از طریق Google Play, چه بطور مستقیم از APK . دانلود کنید از این سایت ها: torproject.org یا the guardianproject.info 

برای اپلیکیشن هایی با سرور روی دستگاه٬‌ این همچنین می تواند کمک کند به درخواست  Tor Hidden Service از Orbot ٬ و پیدا کردن آدرس اختصاصی ONION.
