# چطوری ترافیک اینترنتم را امن کنم؟ (NetCipher) 

منبع:  [Guardian Project](https://guardianproject.info/code/netcipher/)

## Better TLS and Tor App Integration

This is an Android Library Project that provides multiple means to improve network security in mobile applications. The “Onion” name refers to not only the Onion Routing concept used by Tor (which provides anonymity and resistance to traffic surveillance), but also the idea of multiple layers of security that any application should utilize.

جزییات بیشتری که این کتابخانه می تواند ارائه کند:

1. Stronger Sockets: Through support for the right cipher suites, pinning and more, we ensure your encrypted connections are as strong as possible.
1. Proxied Connection Support: HTTP and SOCKS proxy connection support for HTTP and HTTP/S traffic through specific configuration of the Apache HTTPClient library
1. OrbotHelper: a utility class to support application integration with Orbot: Tor for Android. Check if its installed, running, etc.

**IT MUST BE NOTED**, that you can use this library without using Orbot/Tor, but obviously we think using strong TLS/SSL connections over Tor is just about the best thing in the world.

*This library was formerly named OnionKit – https://github.com/guardianproject/onionkit*

## Stronger Sockets

Developers can create their own CACert store using the information provided by our CACertMan project: https://github.com/guardianproject/cacert

It can be used in combination with Android Pinning and the MemorizingTrustManager, to support user prompted override for non-validating certificates.

## Proxied Connections

Once Orbot connects successfully to the Tor network, it offers two proxy servers running on localhost that applications can route their traffic through.

HTTP Proxy: localhost:8118 SOCKS 4/5 Proxy: localhost:9050

The sample project shows the basics of how to use this library to open sockets and make HTTP requests via the SOCKS and HTTP proxies available from Orbot The standard Apache HTTPClient libraries provide calls to setup proxying. This sample code demonstrates that. All applications using the SOCKS proxy should not resolve their DNS locally, and instead should pass the hostnames through the SOCKS proxy.

## کمک رسان Orbot
Provides simple helper to check if Orbot (Tor for Android) is installed, and whether it is currently running or not. Allows your app to request Orbot to start (user is prompted whether to start or not). Finally, it can show a user prompt to install Orbot, either from Google Play, or via direct APK download from torproject.org or the guardianproject.info site.

For apps with on-device servers, it can also assists in requesting a Tor Hidden Service from Orbot, and discovering the assigned .ONION address.
