---
title:  "Moving Back to Github Pages"
date:   2024-12-02 10:00:00 +0530
published: true
categories: personal
toc: true
toc_sticky: true
---

# Back to Github Pages

After experimenting with self hosting the blog on my rpi, I have moved the hosting back to Github pages.
One of the main reason has been the feeling that something was always "ON" in my home. Usually when I leave the house, I like to turn everything OFF. I don't like the feeling of keeping the Rpi constantly running for a blog which barely has any visitors. I feel that is a waste of resources.
The Rpi was not doing anything compute heavy, I had no use case of a proper backend (the blog was still served using `jekyll serve`), so I did not find any need to continue using the Rpi, felt like an overkill to be honest.

A lot has changed since 2017, when I first started using Github pages for hosting this blog. Github Actions is now a mature product with full blown support for Jekyll. Migrating from Cloudflare to GH Pages for this domain (`pulkit.cc`) was straightforward. Since I had originally purchased this domain from Porkbun + I had no particular use of Cloudflare anymore, I decided to move the Nameservers back to Porkbun from Cloudflare.

After that I updated the `A` records to point to Github Pages' servers. There was some errors in auto provisioning of the SSL certs (on Github's end), which took a lot of time to debug. I was able to resolve it by adding a `CNAME` record for `www` which points to the original github pages domain: `pulkitsharma07.github.io`, all thanks to a random medium blog.

I removed the extra gimmicky stuff I had added in my about page (It used to print the Rpi temperature/uptime). Also removed the analytics around this blog. Sometime later I might add discourse comments to it.

## What is the purpose of this blog ?

Reading my about page induced a feeling if cringe. And this happens every time. The longer the gap in reading my about page, the greater the cringe. I am still not fully sure about the purpose of this blog. My first post went to HN front page, and then 2 more after that. While writing all those I was pretty confident that these will get to the front page, as these are posts which I would have upvoted as a reader on HN.
And since then while writing any post, I wanted to write it for the HN audience. I wanted every post to "mean" something, to be HN worthy...I had and have many things I wanted to write, but I just couldn't because I did not want to write about half baked, personal, stupid, unrelated, non-technical things... but I guess I should change that and not think too much..
