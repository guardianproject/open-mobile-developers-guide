# Getting started in Android Development 

Original Title - *I Want to Write Android Apps. Where Do I Start?*
Source [lifehacker](http://lifehacker.com/i-want-to-write-android-apps-where-do-i-start-1643818268)

> Dear Lifehacker,
> I have some background in coding, but I've never touched Android development before. I'd like to get started, but I'm not entirely sure what I need. I don't need to "learn to code" per se, but I could use some guidance on where to start with Android. Can you help?

> Sincerely,
> Dreaming of Electric Sheep

Dear Mr. K. Dick,
As you're probably aware, writing apps for Android is more than just learning code syntax. If you've never learned to code, you can check out plenty of resources here. However, there are still a whole host of tools and resources you might not be familiar with that you may need to make Android apps.


Note: this is not meant to be a comprehensive guide on every detail of these applications and resources. In fact, such a guide could more accurately be described as a book. However, we will give you an overview of the different tools you can use and where to find more information. **These tools require varying levels of experience and if you've never touched code before, you might want to check out our guides linked [here.](http://lifehacker.com/the-best-resources-to-learn-to-code-1517844722)** However if you're ready to move from theory and syntax to actual development, here's what you'll need.

## The Android Software Development Kit (or SDK)

The Android Software Development Kit (SDK) is actually a collection of tools that will help you make Android apps. There's more outside the SDK that we'll discuss, but here are some of the most helpful tools in the SDK:

### Eclipse/Android Studio



There are two primary integrated development environments (IDE) for Android. An IDE is the main program where you'll write code and put your app together. It can help you organize and edit the various files in your app, manage the packages and supporting libraries you app will need, and test it out on real devices or emulators.

The default IDE for Android is Eclipse. Eclipse allows you to modify Java and XML files and organize the various pieces of your application, among many other tasks. The version you get from Google also includes a package manager that allows you to update to the latest version of Android tools as soon as Google releases them.

The main alternative is Android Studio, which is currently being made directly by Google. Like many Google projects, Android Studio is part of a prolonged beta. The long-term intention is for Android Studio to replace Eclipse as the primary IDE for Android development. That doesn't necessarily mean it's for everyone. For example, if you need to make use of the Native Development Kit for apps like games (hint: if you need it, you probably already know you need it), Eclipse is mandatory. However, Android Studio is a good option if you want to get a jump start on the future, and you're willing to tolerate some possible bugs.

No matter which IDE you choose, using it is a bit like Photoshop: it can do a ton of cool things, but you'll probably only learn the individual tools as you need them. However, this is also a good place to get started on some of the basics of Android development. Here are some great tutorials and resources to get you started:

* [Udacity - Developing Android Apps](https://www.udacity.com/course/ud853): This 8-week online class has a good amount of free elements, taught directly by Google engineers. The course won't just copy-paste code, but it will help you learn some of the core concepts and features you'll need.
* [Android Developer Training](https://developer.android.com/training/index.html): Part of Google's documentation includes training tutorials on how to use its tools. These documents will walk you through basic features of the IDE. If you don't have much experience developing applications, this might not turn you into a master dev, but it will help you learn the tools.
* [Vogella](http://www.vogella.com/tutorials/Android/article.html): It's worth mentioning Vogella tutorials in just about every section here. This massive set of tutorials covers just about everything you could cover. If you have a basic question not covered above, check Vogella.

### ADB

We've talked about ADB before from [a regular user perspective](http://lifehacker.com/the-easiest-way-to-install-androids-adb-and-fastboot-to-1586992378), but the tool's primary purpose is actually to aid in development. As such, it's included in the Android SDK. You can use this to load software or make changes to your devices when it's plugged into your computer. Here are some of [the basic tools](http://lifehacker.com/the-most-useful-things-you-can-do-with-adb-and-fastboot-1590337225) you can use with ADB, but if you want to learn more as a developer, check these out:

* [ADB Documentation](http://developer.android.com/tools/help/adb.html): This is the primary resource from Google on what ADB is and how it works. You can find most of what ADB is capable of here.
* [Vogella - Using the Android Debug Bridge](http://www.vogella.com/tutorials/AndroidCommandLine/article.html): Another Vogella tutorial, this one covers the basics of how ADB works and some of the common things you can do with it. If you don't want to dig through Google's documentation for the one command you need, this might be a good place to start.

## Android Developer Guidelines

We've already linked to a couple of resources from the official [Android Developer Guidelines](https://developer.android.com/develop/index.html) so far, which only proves how useful they are. Google maintains a vast, extensive collection of documentation and resources for how to program your apps that you can reference or search through.

If you're brand new to Android development, it can't hurt to browse through some of the tutorials and guides here. They're laid out in such a way that one lends into another (see the Android Developer Training above). Here are some sections that are worth brushing up on if you're getting started:

* [**Google Services**](https://developer.android.com/google/index.html): We've talked about [Google Play Services](http://lifehacker.com/why-google-play-services-are-now-more-important-than-an-975970197) before, but here's where you get to see what's going on under the hood. Google offers a wide variety of features that you might otherwise have to build out yourself like map and location features, cloud backups, sign-in services and more. You can check them all out here.
* [**API Guides**](https://developer.android.com/guide/index.html): Google services are set apart from the regular APIs, which you can also read about here. These range from code to create basic animations, to reading sensors and connecting to the internet. There's tons of info here to add functionality to your app.
* [**Sample Code**](https://developer.android.com/samples/index.html): Sometimes it helps to see how someone else did it before you. This section shows you samples of code for various functions. This can help you see how something works, or just use it in your app so you don't have to reinvent the wheel.
Android Design Guidelines

The counterpart to the developer guidelines is the Design Guidelines. Google is focusing increasingly on teaching its developers how to make apps that not only work well but look good. As such, that means a lot of the work has been done for you to cover the basics like buttons, simple animations, and whatnot.

The place to go to get more info on this is the [Android Design Guidelines](https://developer.android.com/design/index.html), which are a second major subsection of Google's official documentation. Keep in mind that these are here for people who may not have a great grasp on visual design as it relates to creating application interfaces. In other words, if you already know what your app is going to look like, you might not need this. If you already know what you're app looks like but you're not good at making apps look good, check this out.

Here are a list of some the helpful areas to start:

* [**Devices**](https://developer.android.com/design/devices.html): Android targets more than just phones. This section will help you learn how phones, tablets, TVs, and watches all relate and how you can design an interface that adapts to all of them.
* [**Patterns**](https://developer.android.com/design/patterns/index.html): Android is built on structured interfaces. This section teaches the building blocks of how apps work so you can design the framework that you'll be building your design on top of.
* [**Material Design Documentation**](https://www.google.com/design/spec/material-design/introduction.html): This is technically a separate section for now, but Google's newest version of Android will introduce a new type of design language called Material Design. Here you can peruse what that means and how to think about designing apps that fit these guidelines. It's also helpful if you're not experienced with thinking about how users interact with apps, even if you don't follow the specific recommendations.

## GitHub/BitBucket

While you're developing an app, there are a lot of files to manage and you'll need a way to track changes. Git is one of the most commonly used protocols to manage new versions or changes to existing software. Necessarily, it's a little more complicated than a basic backup tool. It's flexible enough to allow you to manage multiple different branches of your app as well as pull from older versions if something goes wrong.

Two of the most common services for managing projects with Git are Github and Bitbucket. Both use the same underlying protocol and can be integrated directly into either Eclipse or Android Studio. BitBucket allows you to have some private repositories (read: storage for projects) without paying money, while GitHub's free offerings require them to be publicly listed unless you pay a little extra. Here are some resources that can help you get started with Git:

* [**BitBucket Tutorials**](https://www.atlassian.com/git/tutorials/): Atlassian, the maker of BitBucket, have a series of guides on how to get started with BitBucket and import your projects here. In my personal experience setting up both BitBucket and GitHub, this service and these guides were much easier for the uninitiated to get started with.
* [**GitHub Guides**](https://guides.github.com/): GitHub similarly has some tutorials on how to set up its service that you can find here. Some of the guides refer to older versions of the software in some cases, but generally you should be able to get up and running with these.
* [**Vogella Git Tutorial**](http://www.vogella.com/tutorials/Git/article.html): Vogella has yet another great tutorial here explaining what Git itself is and how it can help you manage your entire project. While version management is Git's primary function, there's a lot more here that Vogella can walk you through.

Developing for Android is far more than just putting Java in a text editor. If you have a little bit of experience with writing code but haven't dived head first into actual app development yet, there's a lot you may not be aware you need to know just yet. The good news is, you're not the first person to go down this road. These are just some of the tools you need and hopefully these guides will put you on the right path.

Sincerely,
Lifehacker
