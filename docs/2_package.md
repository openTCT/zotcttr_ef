# 2. Package Structure

The main package is named as ZOTCTTR_EF. This package includes some subpackages.

System architecture is based on a host-client structure. The host side includes reports, DDIC objects, user-exits and integration classes. Invoice sending, preview, responding, etc. is carried on by host system.

On client side, there are extractor classes and RFC wrappers that extracts invoice data from ERP and sends it to the host system. The client side needs to have as few objects and logic as possible for a clean structure.

This architecture is designed to work well for various system landscapes. For a single-system landscape, this one system will work both as host and client. On a multi-system landscape, one system will work as a host and others will work as clients. 

![paket yapisi](https://i.imgur.com/JM3UfnK.png)
