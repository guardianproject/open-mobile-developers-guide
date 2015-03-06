# Getting started with Discourse

Source: [Discourse wiki](https://github.com/discourse/discourse/wiki/Basic-Usage-Guide)

This page covers basic usage of Discourse. Note that the interface may look different than the screenshots here, because your site admin may have customized the site.


## Topic Lists
There are several topic lists in Discourse. The first one you see as a new user will be the *Top* list. It displays the 'best' posts from the past, by totaling up the topics' posts, likes, and views.

![Screenshot of Top page](http://i.imgur.com/7Qolwkl.png)

There are several things on this page. On the first row, we have the **Category filter**, **Nav menu items**, and the **Create Topic** button.

You can use the **Category filter** to filter by category. For example, here is the top page, filtered to UX topics only:

![Screenshot of Top page with UX selected in the category dropdown](http://i.imgur.com/kpBmpfJ.png)

A topic is displayed in a row on the list. Going from left to right, we have the **title**, the topic's **category**, a list of **participants**' avatars, the number of **posts** in the topic, the number of **likes** in the topic, the topic's **view** count, and its **creation** and **last activity** dates.

Clicking on the title or post count will bring you to the **[last post that you read](#last-read-tracking)** in the topic. Clicking on the like count will take you to the **start of the topic in [summary mode](#summary-mode)**, if available. Clicking the topic start date will take you to the **start of the topic**, and clicking the last activity date will take you to the **end of the topic**.

The other available topic lists are **Latest** (this will be the default once you achieve Trust Level 1), [New, and Unread](#new-and-unread-topics). 

### New and Unread topics
**New topics** are those that you have never read. By default, only topics created in the **last two days** will be considered New.

Topics considered New to you look like this: (screenshot)

There are two kinds of unread topics: those that you stopped reading, and those that have new posts.

Topics you stopped reading have a grey bubble with a number in it, representing the number of posts you haven't read yet.  
It looks like this: ![gray bubble on end of topic title](http://i.imgur.com/vUzIhMT.png)  
Topics that have new posts since you last read them have a blue bubble with a number in it, which is the count of new posts.  
It looks like this: ![blue bubble on end of topic title](http://i.imgur.com/s1pwh4P.png)

### Nav menu
The nav menu is displayed near the top of the topic lists:

The available tabs are Latest, New, Unread, Starred, Categories, Top, Read, and Posted. Not all of these will be shown, but they are still accessible.

 - **Latest**: All topics, in order of last activity.
 - **New**: Here, only topics considered [new](#new-and-unread-topics) will be listed. (Logged-in only)
 - **Unread**: Here, only topics considered [unread](#new-and-unread-topics) will be listed.  (Logged-in only)
 - **Starred**: Only topics that you have starred will be listed.  (Logged-in only)
 - **Read**: Topics in the order that you last read them.  (Logged-in only)
 - **[Categories](#categories)**: Overview of the categories in the forum.
 - **Top**: The most active topics in the last day, week, month, and year.

The leftmost item in the nav menu is the **default tab**, and it's what you see when you click the Discourse logo or a category badge. By default, this is the Latest tab.

## Categories
Every topic has a **category**. Discourse, unlike older forums, encourages mostly flat categorization: there is only one subcategory level available, and all the topics go on the same list.

### Categories page
The categories page gives you an overview of all the categories on the forum.

(screenshot)

Here we see that an entry in the categories page consists of the **category badge**, its **definition**, the badges of its **subcategories**, the avatars of repeat **participants**, a selection of recent **topics**, and the **rate of new posts and topics**.

## Topic Page

### Creating a topic
To create a topic, click on `+ Create Topic` in the upper-right of any topic list. If the topic list is filtered by a category, that category will be pre-filled for you.

Choose a good topic title and start writing in the composer.
