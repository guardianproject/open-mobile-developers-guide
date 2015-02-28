# How to use IRC (Internet Relay Chat)

Source: [Instructable](http://www.instructables.com/id/How-to-use-IRC-Internet-Relay-Chat/?ALLSTEPS)

[EDIT] This is an Instructable intended as a starter for those who do not yet understand Internet Relay Chat, or IRC. This project is not intended to cover the entire scope of IRC and each individual client's capabilities, but is targeted to the windows user who is new to IRC, and this project aims to help those users to get started with IRC as a superior form of communication over IM clients such as AIM or YIM, which require installing software already proven to be a security-risk. Even if you do not choose to use Chatzilla or Firefox, some information here may be useful to new IRC users with general commands supported by most IRC clients. If you are looking for help with a specific client, see FAQ's related to your client specifically. 

If you have more wisdom to add, please post it as a new comment. For those new to IRC, please read this project and it's comments anyway to make sure you know the basics. You are a user until made an operator, so don't try to kick ops from public channels or your client will laugh at you. All IRC addresses and/or examples are valid and accessible for the purpose of learning how to use the system, to the best of my knowledge. Screenshots were made from actual logons and were not "doctored" in any way, so you can join any channels, public or hypothetical, displayed in any screenshot here. 

[/EDIT] 

Internet Relay Chat is much like your instant messengers, but is devoid of spam or general security risks that other IM services not only allow but are built to accept. Typical IM services such as YIM, MSN-chat, AIM, and many others are specific targets due to their accessibility and ability to silently upload files to your computer and execute them on command without you even knowing what happened, from someone not even showing up in your chat window. 

IRC is not only secure in multiple ways, but you cannot hide behind an application. If someone's there, you'll know it, and you must accept all file transfers before they are actually received. Below, I'll explain how using IRC is just as easy, far safer, and much more functional than your bloated n00b IM-client-for-dummies. For those smart enough to use Firefox, this can't be easier. For those still using IE for anything, there may be no saving you, but I'll try.
Step 1: Learn to use Firefox, or download a suitable IRC client such as mIRC

## Step 1: Learn to use Firefox, or download a suitable IRC client such as mIRC

* You can find Firefox [here](http://www.mozilla.com/en-US/firefox/)
* Get the Chatzilla addon [here](https://addons.mozilla.org/en-US/firefox/addon/16)
* For those so stubborn not to try the best, you can get mIRC [here](http://www.mirc.com/get.html)

I'll focus on those who know better to use Firefox than IE. Downloading the Chatzilla extension and incorporating it into Firefox is easy, simply download it and it knows where to go. You may be asked to restart Firefox or your computer, if you are not asked, restart your computer just to assure a correct install anyway. Windows likes to corrupt itself and blame properly-coded software.

Now that you have it installed, you can find chatzilla from the top by dropping down the "tools" tab in the menu-bar.
Step 2: Join a network

## Step 2: Join a network
This seems largely difficult, but it is incredibly easy, and your choices are laid out for you. In this image, I have joined "efnet" as my primary host and server. By now you should have connected to efnet for sake of example.

IRC addresses work similarly to http "hyperlinks" (aka "links"), so that clicking on a link to an irc channel will automatically start chatzilla for you. Below, I will get you started.

Start chatzilla, and you will be faced with a lot of messages. Ignore them for now and type the following into the text-box at the bottom:

/networks

Chatzilla will return this to you in the message window (or similar):

{INFO}	Available networks are dalnet, efnet, freenode, hispano, hybrid net, ircnet, moznet, quake net, serenia, slashnet, undernet, webbnet.

The networks will be like hypoerlinks, so you can just click on one to join that particular server. Here I have chosen to use "efnet" as my server by simply clicking on the name shown above. Now that I am on a network, I have the ability to join an existing "room" (the real name is a "channel", so we are calling it a "channel" from now on), or create a new one (it is best to start your own channel than to hijack an existing one). So, let's say you and your friends decide to meet on irc://efnet/instructables. Firefox users can simply type this address into the URL window in Firefox, and chatzilla will automatically connect to that address. If you have it installed, try it below by simply clicking on the link:

[irc://efnet/instructables irc://efnet/Instructables]

Congratulations, you are now using IRC. The link above is shown just as you would type it into Firefox's URL textbox (the box at the top that shows your current internet address). Remember to type an irc address as shown above. Generally, "http" means "internet", "irc" means "irc", of course, and "file" means a location on your computer. You may start to see how the internet and your computer work much in the same way.

Now, say you don't want to use irc://efnet/Instructables, maybe you want your make your own channel to chat in, and you want to call it "Jedi Knights". You can't make this work properly because "channels" (what some call "chat-rooms") cannot have spaces in the names. The ideal workaround to this is to use an underscore instead of a space, as seen below (go ahead and try it):

[irc://efnet/Jedi_Knights irc://efnet/Jedi_Knights]

Notice that I still have efnet in the address. This is because efnet is the server that is hosting your traffic (your text, files, etc). By now you might start to see how you can create your own places to chat. You need to use a valid server, but you can make up any name you want for your channel as long as it contains only regular characters such as letters and numbers, no special characters will be recognized. This helps your security because an underscore can be printed by over a hundred different key combinations (underscore is often used to display a "non-display character").

You don't even have to use efnet, just type /networks to see what networks are available, and your address needs to be prefixed with a valid IRC server as seen when typing the /networks command. You cannot simply create your own server, and doing so will not be covered here.. Click on the name and you can find or create your own channels (or "rooms"). What server you use amongst those available does not particularly matter except for their performance, and they all are generally reliable. However, you cannot go to irc://efnet/instructables, and be in the same place as irc://dalnet/instructables because you will be on a different server.

## Step 3: Now that you are on IRC...

Picture of Now that you are on IRC...
With IRC, you tell the "client" (chatzilla, in this case) that you are giving it a command. The standard is to precede the command with a slash. As seen previously, typing /networks tells the client to display the available networks. To see a list of all available commands, simply type /commands. A list will be displayed showing the proper commands that are accepted from where you are. I won't get into them all, but I'll show you the important and most useful ones.

Probably the most useful to anyone at first is the /nick command. This changes your "screen name" to whatever you want, within a limit of 9 characters. Let's say you started with the nickname "IRCMonkey" as chatzilla defaults to, and you want to be "B_Kenobi". Simply type as shown below:

/nick B_Kenobi

Now that is your new nickname. By default, chatzilla will save this as your default nickname for that channel with a limit of 9 characters. When you select "open this channel at startup" (selectable as shown in the image displayed below, this becomes a new default startup setting), you simply have to start chatzilla and your username and preferred channel will automatically start and you are ready to go. You will not have to change your nickname every time you start, as chatzilla will retain your last nickname before you close it to be used when you return to that channel.

If you are stuck, or just want more information, simply type /help and chatzilla will walk you through any command. For example, we will ask chatzilla how to use the /dcc-send command:

/help dcc-send

[USAGE]	dcc-send [<nickname> [<file>]]

[HELP]	Offers a file to |nickname|. On a query view, |nickname| may be omitted to send the offer to the query view's user. A file may be specified directly by passing |file| or, if omitted, selected from a browse dialog.

(Please note that the above apparent links do not lead to anything and were not intended)

This may seem confusing, so let me explain it. Say you are chatting with your friend "Gozer", and you want o send them a file called "my_pix.bmp" from your desktop. You simply type:

/dcc-send gozer my_pix.bmp

Gozer will receive an offer to accept or deny this file, and if they choose to accept it, a new tab will open on your side showing the progress of the file transfer and the rate at which it is being transferred. The file transfer is directly from your computer to theirs, and no other people chatting with you will even know it is taking place, much less the server itself. It is transferred by a process called "P2P", which is a direct connection directly between you and your recipient. It is not encoded, but the security lies in that the transfer cannot be redirected, located, or even observed because it is just between you. The two computers are passing data as if they were connected by a private network, and cannot be intercepted because only two connections will work....The sender and the receiver. There is virtually no way a third party can get on that data-stream because the connection will either block them or self-terminate, as it is not compatible with more than two users. The transfer will continue in the background as you continue chatting, so there is no need to wait for it to finish.

There is a variant of the /dcc protocol, which is /dcc-chat. This allows you to bypass the server and the two of you act as your own. in a /dcc-chat enabled conversation, you are literally talking just between your two machines on a direct line. Locating this type of chat protocol is nearly impossible unless someone is specifically monitoring your line. to enable this with your friend Gozer, just type:

/dcc-chat gozer

A new tab will open, and you two are literally chatting client-to-client, without a server as a middle-man. This is rarely necessary, but if you are that paranoid, it is available. You can take a file-transfer automatically from Gozer by typing:

/dcc-accept-list-add gozer

Now you will automatically accept files from Gozer after a 15-second delay in which you can choose to deny the transfer. If you take no action, the transfer will start and you will begin downloading the file from their computer. There is no limit to file size whatsoever when using DCC. Send 1kB, or 190 GB, size does not matter, so long as you remain connected to Gozer (or whoever your friend is, we're using "Gozer" as an example). Now you will no longer have to choose "accept" every time they send you a file, and there is never any limit to how many transfers you can take at once, however, you will be taking files into the default folder. To change this to your desktop (for ease of explanation), have Chatzilla open and use the toolbar. Go to Chatzilla->Preferences....Go to "global settings" and select the DCC tab..Under "Downloads Folder", type-in "file:///C:/WINDOWS/Desktop/" (without quotes) or browse the path to your desktop and all DCC transfers will go there from now on as long as you "apply" the change before closing the menu.

For reliability, it is best to take one at a time though. This is active as long as they keep the same username, usually, even if their IP changes, such as if they use Dail-up/telephone internet access

(The above "IP" and Dial-Up..." are intended links, so clicking on them will give an explanation if you do not know what they mean)

You can PM other users by typing:

/msg Gozer I think he's lying

This will send a message only to Gozer: "I think he's lying" (without quotes). No other person will ever see this message, and it will show up in a new tab on the chatzilla client only for the recipient of the message, often with a system-sound to alert the recipient. This is a way to talk privately during a chat with several people and only talk to one person, like whispering to them, but noone can ever know that you did or what you said except who you said it to. Experiment with it to see how it works.

The context is /msg <username> <message>, just be sure to add a space between the username you want to talk to and the message you intend to type.

## Step 4: Operator status and it's priveleges...

When you are the first user to show up to a channel, you are automatically given "operator status", meaning you are the operator of that channel, or the administrator of that channel. This gives you special privileges that other users cannot use without that status. It is considered polite to give operator status to people you expect to be there with you, so that they can have administrative control of the channel as well. To share operator status with your friend Gozer, type the following (assuming you were there first): 

/op gozer 

This command can only be given by someone with operator status to share the same status with a fellow user. What good is "operator status" to the two of you? I'll show you more commands that will demonstrate: 

/kick Mr_Rude 

This will kick the intrusive person named "Mr_Rude" from the channel, removing them from the channel. A message can be appended to show a reason why you kicked them, but is not necessary. An example is shown below: 

/kick Mr_Rude No swearing is allowed on this channel 

When Mr_Rude is kicked they will receive the message, "You have been booted from #instructables by B_Kenobi (No swearing is allowed on this channel)" 

If you have a persistent user who annoys you and does not respond to the /kick command, you can use the /kick-ban command, that will kick the user off and ban them from rejoining. You can also attach a message in the same way as a simple /kick: 

/kick-ban Mr_Rude No swearing is allowed on this channel 

They will see the same message as above, but "booted" will be replaced with "banned", and they will not be able to join your channel as long as you are on it. you can remove this by typing the following: 

/unban Mr_Rude 

Now the ban is lifted and that user can log into your channel again. If another operator banned a user, you can unban them and override their ban as a fellow operator. 

Operators can also set the topic for the conversation. To do so, simply type /topic and enter what you want as your topic, to be shown for all users at the top of the screen. Anyone who joins will see this in the introduction to the channel, and all users already logged-on will see the change as it is made: 

/topic I love bunnies! 

The topic will change to this after this command is given, if you have operator status. Try it and see by looking at the top of the window... 

If you give someone operator status and they misbehave, an operator can strip another operator of his status by using the following command: 

/deop Gozer 

This will remove Gozer's operator status (maybe because he bans your other friends for no reason or abuses his operator status), and remove his ability to change topics, or kick/ban other users. If you wish to not have operator status, you can deop yourself as well, as an operator has control over privileges of all users, including themselves. An amusing way to leave as an operator is to kick yourself. Kick yourself for foul language even when you haven't used any, or for any reason. It's an inside-joke amongst veteran IRC users. 

It takes practice, but not long before you are perfect with these commands....


## Step 5: More commands and interesting fun

Picture of More commands and interesting fun
More fun you can have with IRC is using colors and bold when you type, to emphasise what you are saying, and how you say it. Give your text personality by the commands below:

By prefixing /me to a statement, you display your text in italics like a footnote or a silent action by context. an example is below:

Gozer: I really like the new Heidi Klum pix

(you type the following in response):

/me hears that

The result is your post showing as:

B_Kenobi: hears that (in italics)

as if you said it under your breath, or otherwise meant it as a silent thought. Experimentation with this will show how this can be useful in context.

Some of you may wish to type in color or otherwise customise your text. To do so, you need to prefix the text with the appropriate symbol. Start the desired text with the percentage symbol "%" and a small tool-tip will appear showing the supported commands. For example, %U means to underline the following text. you can end the effect by repeating the command. For example:

I %Uwant money %U man!

The result is "I want money man", but only "want money" is underlined in that text. Bold is a lot simpler:

I *want money* man

As typed, "*want money*" will show in bold text. Anything bracketed in asterisks will be shown as bold type, but the asterisks will show. Using asterisks are shorthand, but for more perfect text, use the %B tag instead so that they won't show. Remember that to use this option, you must use capital letters for every prefix and suffix (not %b, but %B for bold).

You can combine tags such as the following:

I %U %B want money %U %B man

Which will show "want money" in bold and underline at the same time. Skillful tagging can show the same in bold/underline/<color>/italic all at once. Below I show basic text tagging and it's effect. The commands are as follows (try them when on IRC to see the effect):

I %Bwant money%B man

I *want money* man

I %Uwant money%U man

I %B %Uwant money%B %U man

The image shows the difference between these commands. Many commands can be combined for the desired effect. Note that you do not need to space between tags and the text as a "text tag" (called a "switch") for the client to interpret everything following as the prescribed format until terminated, as seen above. A switch (%U or %B is called a "switch", just like how you turn the lights on in a room) is set in text, and then terminated to return to the default for following text. "%" is a switch, just as "/" is a "command flag". The client responds to "/" as a command and "%" as a switch, and this is how you can better control the client. A switch is a trigger for a different interpretation of the following text, just as "/" tells the client that the following text is expected to be a command.

I %C9 %U %BWant Money%C9 %U %B

This will show the latest example in bold, underline, and in green. Spaces between the text and the switches are displayed, so if you spaced the tags here, the space would carry the same underline. I keep switches in order, but as long as you close them all, the effect is turned-off. The order is not specific, just as long as each switch is closed as it was opened, or it remains until closed. Text entered into IRC below produce the same result:

I %C9 %U %BWant Money%C9 %U %B
I %C9 %U %BWant Money%U %B %C9 

This line has all the same switches, and upon conclusion of the line, all switches were opened, and then closed, returning the text back to it's default state. If you omit the %B switch, all your text will be in bold until you "turn it off" on that line..Clients will vary, but chatzilla tends to return to default for the next line. Type the same line above and then add text beyond that. Now try removing a switch, such as "%U"....The effects will continue, but without the underline effect What you see is what you are sending, and another chatzilla client will show the same thing to who you are sending to.

By now, you should be learning something, and are becoming more proficient in computing, even if you are not aware of it. You can get really good with IRC and show-off your skills once you learn how to control it, and some of this should help you pick-up on these tricks.

Now you should be able to use Chatzilla with some proficiency, as well as many other IRC clients. Stop using IE, and start using Firefox, and get the chatzilla extension (no, it's not even on the level of "difficulty", it's child's-play, so you have no excuse), and when you accept the best, you will be above the rest and learn IRC to discover the real IM client that has been around long before YIM or MSN or any other. Use the best, and never need the rest....

All you need to do now is to convert your friends, and show them that you know the real thing from the fake. You don't need to install some unstable application just to connect to this network, you just use the best browser for your internet and your chat-system is right there.

If you still think Internet-Explorer is better than Firefox, and refuse to change, forget this Instructables project, and invest heavily in anti-virus programs and everything else you can, and be sure to have a technician on-call to solve your IE-related problems because you choose to be incorrigible. I'll try to feel sorry for you that your 3.1GHz machine is slower than my 1.3GHz machine due to your gaping security-holes that make your machine a zombie for others to enslave, but you choose that by choosing IE, so enjoy the finest of Microsoft programming and the privileges of your inability to accept change despite the evidence contrary to your popular belief.

If you are conservative in software, you automatically fail, so take pride in your failure of self-designed obsolescence and your inability to accept something above the status-quo, because IRC is simply not for you. IRC requires a minimal level of intelligence, so if you think you are going to do this from Internet explorer, just forget it, this project is light-years from your capability or potential skill level. Continue to use IM until you "are all growed-up" and can handle IRC.

The rest of you are already chatting on IRC now, so enjoy, and welcome to the high-tech world in high-tech format. Never use a dumbed-down client again, because now you have real control, and noone has to hold your hand or distract you from what's going on behind your back. Welcome to the most secure IM system that was always available to you but noone ever told you how. Now you can chat securely without spam or intrusion, and you have easy and significant control over your chatting area.

Welcome to the 21st century of IM chatting...Enjoy... 