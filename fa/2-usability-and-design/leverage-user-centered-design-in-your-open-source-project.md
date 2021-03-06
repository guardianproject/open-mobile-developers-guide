# اعمال نفوذ طراحی کاربر محور در پروژه متن باز

منبع:  [Opensource.com](http://opensource.com/life/14/1/how-to-leverage-user-design)

وقتی که من در Open Technology Institute شروع به کار کردم (http://oti.newamerica.net/) (OTI), همیشه این سوال را از خودم می پرسیدم : چرا طراحان  UX علاقه دارن در یک مجموعه متن باز کار کنند ؟ واقعیت در نظر من اینه که همه طراحی ها و قابلیت ها بطور طبیعی با متن باز کار می کنند. 

طراحان٬‌ طرح ها و ایده ها را از الگوه های طراحی می گیرند که ما تجربه کردیم و یا در دنیای اطراف ما هستند. ما بطور مداوم ایده هامون را از مفاهیم متفاوت  با هم به را آزمایش و یا به اشتراک می زاریم تا طراحی بهتر قابل درک بشه. منابع خیلی خوبی برای قابلیت های استفاده و بهترین روش های طراحی  در اینترنت هستند (پایین را ببینید) و خیلی از کاربران متن باز از این چارچوب به عنوان اصولی در جعبه ابزار های خودشون  اضافه می کنند٬‌ پس خط بین توسعه دهندگان٬ طراحان و غیره خیلی مبهمه. 

اینجا یک سوال باقی می مونه: چرا ما به ندرت قابلیت های استفاده حرفه ای و طراحان را در جامعه متن باز می بینیم٬ و ما چطور می توانیم شروع به تغییر  این کنیم ؟ 

غالبا پروسه ها و پروژه های زبان باز در طراحی و مدارس  UX و کنفراس ها برجسته نیستند٬  محدود کردن  آگاهی ها در جوامع طراحی از نیاز های این حوزه است. علاوه بر این٬ همون طور که دربالا اشاره کردم٬ سیر تکامل نرم افزارها٬ چارچوب ها٬‌ کتابخانه ها و جعبه های ابزار مثل Twitter Bootstrap و AngularJS اجازه می ده که وظیفه ها کمرنگتر بشند و این ساختن را آسان تر می کنه. همزمان با اینکه در یک دست داره مشخص میشه که قابلیت های استفاده و طراحی نیاز های حیاتی هستند که هم برای کاربران و هم برای توسعه دهندگان پروژه ها (APIs هم نیاز به استفاده است)٬‌ ظاهرا در استفاده از نرم افزار های زبان باز یک شکاف  درصدی وجود داره. در گذشته٬ پروژه های کوچک تجربه کاربران را به عنوان یک چیز تجملی  مشاهده می کردند ( UX) و بنابراین از نیروی انسانی برای نیازهای UX سرمایه گزاری نمی کردند. همچنین من می تونم تصور کنم  که تقاضای بازار از طراحان را برای کار کردن در کمپانی های های خوب پول می دن اونها را نگه داشته٬ در حالی که بسیاری از پروژه های زبان باز یا بصورت مجانی اداره می شن یا بودجه خیلی کمی دارند. 

به هر حال٬ من اعتقاد دارم که یکی از دلایلی که ما طراحان و قابیلیت های استفاده حرفه ای را در جامعه متن باز نمی بینیم این هست که اونها مطمن نیستن که چطور می توانند در پروژه ها همکاری کنند یا در گذشته در نتوستن خودشون را در پروژه های متن باز نشان بدهند. 

در Open Technology Institute (OTI), ما داشتیم به این فکر می کردیم که چطور راهی را پیدا کنیم برای استفاده فیدبک کاربران در بهتر شدن در تغییرات داخلی و همکاری ها٬ کمک بیشتر کاربران در جامعه٬ ترویج همکاری کسانی که برنامه ساز نیستن٬ و بزرگتر فکر کردن به اینکه جایگاه پروسه زبان باز در (پروژه چمدان باز)(http://commotionwireless.net/) ٬یک ابزار متن باز برای  ارتباط  که از   موبایل ها٬ کامپیوترها و دیگر دستگاه های سیار برای بوجود آوردن شبکه های مش (تور) استفاده کنه.

برای (نسخه رسمی 1  پخش شده) (http://commotionwireless.net/blog/commotion-router-v1-release-notes) نرم افزار٬ ما تصمیم گرفتیم به یک  تغییرات  کلی روی رابط کاربری٬ اولین تمرکزمان به روی نسخه روتر سیار بود و همچنین هماهنگی سایر سیستم عامل ها(Mac, Linux, Android, Windows, iOS)  با روتر. سفت افزار  شبکه مش چیزی نیست که هر روز باهاش سروکار داشته باشید - تیم توسعه دهندگان ما غالبا تمرکزشون روی اضافه کردن قابلیت های بیشتر هست در حالی بطور همزمان تلاش می کنند که فایل ها را کوچک تر کنند تا بتونند در سخت افزار که جای خیلی کمی دارند جا بشند (فقط 5.2 مگابایت). همزمان تیم حوزه ما که منم بخشی از اون هستم٬‌ داریم تحقیق می کنیم که چطور قدرت نفوذ شبکه مش را در روابط اجتماعی ٬ آموزش توسعه و اتخاذ چارچوب و امتحان کردن این ایده ها  را با جامعه ای که تجربه کردن را با جامعه های که زیرساخت هاش متعلق به خودشون بالا ببریم. 

در مقاله بعدیم (http://opensource.com/life/14/2/Five-steps-using-design-open-source-project), من این 5 نکته ای که یاد گرفتیم  را از بررسی های اعمال نفوذ کاربرا در   اینترفیس بهم ریخته بازتر می کنم 

** 5  راهنمایی برای اعمال نفوذ طراحی کاربر محور در پروژه متن بازت**

1. **پیگری قابلیت ها و مسائل مربوط به طراحی **.
ایده ها را جمع آوری کن همنطور که پیشنهادات و انتقادات را جمع می کنی. با برنامه یا تغییرات در طراحی به تک تک فید بک ها پاسخ نده. مسائل را برای تولید تم هات بکار ببر. 

2. **بدون که برای کی داری طراحی می کنی**.
وقتی که داری تصمیمات را برای طراحی می گیری٬ معمولا باید اولیت گذاری کنی که مخاطبت کیه ؟  کاربرای مبتدی یا حرفه ای. 

3. **ساخت پیش نمونه یا نمونه اولیه**.
از روش پیش نمونه برای قدرت نفوذت استفاده کن (روی کاغذ - یا کامپیوتر) برای بدست آوردن اون پیشنهاد و انتقادی که نیاز داری.

4. **اینو بدون که برنامه ات از دید یک کاربر چطور کار می کنه**.

5. **از قابلیت ها و تکرار طرح استفاده کن برای ساختن  مجموعه خودت: hackathons٬ ٬ لیست ایمیل ها و ابزارهای توضیع**.


### منابع اضافی 

- [10 قابلیت Heuristics] (http://www.nngroup.com/articles/ten-usability-heuristics/)
- [چگونه یک گزارش خوب از مشکلات UX بنویسیم](http://georgiamoon.github.io/ux-bugs-talk/)
- استفاده ی UX Methods چی هست و کی از آنها استفاده می کنیم](http://www.measuringusability.com/blog/method-when.php)
- [قابلیت روش های تست یا Testing Methods ](http://www.usabilityfirst.com/usability-methods/usability-testing/)
- [استفاده از تجربه کاربران با هزینه کم]http://usabilitygeek.com/low-cost-user-experience-testing/)
- دانشنامه تعامل انسان با کامپیوتر٬ نسخه 2(http://www.interaction-design.org/books/hci.html)