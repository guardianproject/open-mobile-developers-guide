# A BEGINNER’S GUIDE TO CONTRIBUTING TO OPEN SOURCE

By Natasha Murashev
https://blog.generalassemb.ly/beginners-guide-contributing-open-source/

_Natasha is a iOS Engineer at Capital One Labs and instructor at GA in San Francisco. This post originally appeared on her blog, Natasha The Robot._

When I first started as a Rails developer, I thought of all the Rails gems as magic. Some smart people were making all these cool libraries for me to use! I had no idea how any of these libraries worked, and I was ok with that. They worked and did what I needed them to do. They seemed so comprehensive and thought out, that I didn’t even know what I would contribute to them even if I wanted to!

To this day, I haven’t contributed any open source code to the Rails community. And that’s because the Rails community is extremely active on open source, so it’s actually hard to find things to contribute to! Of course you can go through issues and try to solve them, but they are usually pretty complex and intimidating, to be honest. With all these smart people commenting on the issues, it’s hard to feel like you’re good enough to solve it!

Fast forward to the end of Mobile Makers, when I first learned iOS, and I made my very first open source contribution! Since then, I’ve made a few more, and I’m no longer scared of contributing to even more projects! Here is how I made the jump and what I learned in the process:

## IT’S NOT MAGIC

Getting out of the Rails community, one thing I learned quickly was that there is actually a sort of mistrust of open source libraries. While I wanted to use all the CocoaPods all the time (just like in Rails!), the senior iOS engineer on my team would always question using external libraries, preferring to build our own if possible.

There are very few iOS libraries that are used consistently across iOS projects, and most projects only use a few libraries to start with! That’s changing a bit thanks to CocoaPods and how easy it is to delete/upgrade dependencies, but it’s nowhere as close to Rails level, where most of your project is made up of plug-and-play libraries.

Changing my mindset to realizing that these external libraries are not magic, has made a HUGE difference for me. Knowing that the person writing a library is a real person, who makes mistakes, might not write the best-optimized code, and who can’t see all the edge cases all the time makes it much easier to spot the small (or big) places where I can contribute.

## CARING IS SHARING

While there are some people who advocate to actively look for open source projects to contribute to, I found that all the projects I contribute to are the ones I’m actually using in my own code.

The truth is, I don’t have time to actively scour GitHub for issues/libraries to contribute to. But when I’m using a library in my own project, and I wish it had feature X or that bug Y was resolved, it’s a no-brainer to solve it and contribute back! In fact, I get super excited when I find these opportunities, since I do like to contribute to open source!

Which brings me to my next point…

## IT’S SUCH A GOOD FEELING…

Contributing to open source is seriously addictive! Already, knowing how to code and bending the computer to your will is magical and makes you feel like a sorceress. But when you can take someone else’s “magical” code and make it better and they agree that you made it better (by merging it in), the feeling you get is indescribable. It’s like you just became a Level 10 magician instead of Level 1.

## START SMALL

Again, I thought of open source contributors as magicians making sweeping changes and improving everything with their magic wand, but the truth is most changes are pretty small. They just add up and eventually change and improve the whole library for everyone in a very substantial way. So don’t underestimate the power of small changes!

Here are some recent examples of contributions I made/am in the process of making:

## MODIFY A README

I wanted to possibly add the Toast library to my iOS project, but they didn’t say on their README that there was a CocoaPod available. Since I just wanted to test out the library in my project, I wanted it to be easily removable.  So even though I’ve used this particular library before and knew it was good, I started searching CocoaPods for another Toast library.

A few libraries down, I found that this particular Toast library was, in fact, a CocoaPod! To make sure other iOS developers know there is a CocoaPod available, I submitted a pull request with CocoaPod installation instructions to the README file of the library. Tiny change, but hopefully, it’ll help other developers!

## ADD ADDITIONAL SAME FUNCTIONALITY

When building an Android app for the CodePath final project, my team wanted to try out the current official Android font – Roboto. Turns out it’s pretty manual to incorporate external fonts into Android, so we used a library called RobotoViews to help us out. Basically, each view has to be configured to have the Roboto typeface available.

However, there was one view that the RobotoViews library did not include that we needed – the newer Switch view. Adding the Switch view was just a lot of copy/paste following the convention of the other views, so it wasn’t hard to add, but now another view is available as a RobotoView!

In other words, the creator of RobotoViews already did all the hard work to make it easy to modify only a few things to add a new view.

Similarly, I contributed to a popular iOS Foursquare client library by just adding an additional function that wasn’t there originally, but was very easy to add based on the creator’s work to abstract this process!

## REFACTOR

I was adding a very small change to the ECSlidingViewController to make sure a keyboard is dismissed when a sliding menu slides out, when I noticed that three functions had the same exact code with a very slight variation. So I just refactored that code by creating a function those three functions can just call passing in the one different argument, so anyone who needs to make a change to this function in the future, only needs to make the change once.

As you can see, all my open source contributions are very tiny and easy to make! As you keep using external libraries, you’ll see similar opportunities. So go ahead and make the tiny changes – they count!

## HOW TO CONTRIBUTE

Watch this great step-by-step RailsCast on how to contribute to open source (it’s a very similar process for non-rails projects). But basically, here are the steps:

### FORK

Find the library you want to contribute to on Github, and simply click the Fork button!github-fork

### CLONE

Next, clone the library that you forked – it should now be under your name (e.g. NatashaTheRobot/ECSlidingViewController), not the original creator!git-clone

### BRANCH, CHANGE, PUSH

Once you’ve cloned the repository, change into the repository’s folder. Next, check out a new branch with a good name reflecting the change you will make. Make the change, and push the branch to GitHub.

When you go to your GitHub profile main page, you’ll see a big green “Compare and Pull Request” button. Take a look at your files, make sure everything looks good. Then make sure you make a pull request to the original branch (not the one you forked). When you’ve done the pull request, is should look something like this! Again, make sure you’re doing a pull to the original creator’s master branch!git-pull-request

### TWEET

This step is of course optional, but I like to tweet at the creator to notify them of the change. It’s possible they don’t have GitHub notifications turned on, especially if it’s an older repository with less recent changes, so it’s nice to let them know and start a conversation.

They might also be too busy to merge it in, so it’s nice when they reply and tell you they’ll take a look when they have a chance. You know that your pull request will not be in limbo forever!

### ENJOY!

Again, contributing to open source is really fun and a great way to learn from the best and improve your own skill. Hope this guide makes you feel less intimidated at contributing!
