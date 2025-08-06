---
title: "You can't lose if you didn't set out to win"
date: Mon 31 Mar 2025 21:46:50 IST 
description: A tale about a side-project which I built to learn more about frontend development and marketing.
categories: personal 
published: true
toc: true
toc_sticky: true
---

Having constantly working on the backend side of tech, I would often find myself deeply insecure about my frontend coding skills. As time went by, I started getting deeper into networking protocols, containers, databases, platform engineering AND at the same time, I was getting farther away from React, NextJS, and frontend development in general.
To keep it short, I challenged myself to create a full blown application, deploy it on a cheap VPS and then see if I can get some traction and earn some internet dollars. I wanted to build it anonymously and did not want to use my existing network on LinkedIn to get users, as I knew most of them will just use it once and never become a "customer". The interesting (or rather disappointing) bits start once I had the product built and now I was ready to launch it. Here it goes...

## Building
### The Idea
My core idea was very simple: find spelling mistakes in websites.
This is a relatively straightforward problem and with the help of latest LLM models (which are very good at finding spelling mistakes) I should be able to create a good enough solution. In case this gets famous, I could probably expand into more areas.

### The Polish
Just the core idea was very simple to implement, so I wanted on rest of the "product" to be really good looking and polished, something which I have vehemently avoided throughout my career working primarily on the backend. My mind was constantly thinking about offloading this task to some freelancer on Upwork so I can work on the "core" features, but then I forced myself to actually work on the product as that was my initial goal: make a good looking and usable product, not just a highly scalable LLM powered spell checking engine written in Go.

Some of these non-core functionalities I decided on were:
* Taking a screenshot of the problematic section on the page and highlighting the mistakes with a red underline.
* Generating suggestions/corrections via LLM.
* Asking LLM to assign a severity score to each mistake.
* A simple shareable report URL which can be sent to the user.
* Full blown user management / dashboard to track, schedule, and manage scans.

### Implementation
I heavily utilised Cursor for designing and coding the application. I chose NextJS as the development framework, as it was completely new to me. Having the same codebase for both the frontend+backend with all the bells and whistles was pretty enticing.
I rented a very cheap VPS (5 euros per month) from Hetzner and after some experimentation decided to use PM2 for serving the NextJS application. For deployment, I utilised Github Actions to deploy to the VPS after merging to the `main` branch:

The other components/libs used were:
* Sqlite
    * for storing users, scan results, credits, etc.
* Redis (running locally, via systemd)
    * For caching the DOM tree of the pages and LLM requests.
* Clerk
    * For Authentication, "Sign In Via Google"
* Puppeteer
    * For extracting text from a website, highlighting errors, and more.
* Dodo Payments
    * MoR provider based in India for handling payments.
* TailwindCSS
    * I have to admit, 99% of tailwind was written by Cursor. Just CMD+K the div and say how you want it to look.


### Issues/Roadblocks (possible skill issue)
The NextJS ecosystem at that time (around Dec 2024) seems to be heavily inclined towards using PaaS tools like Vercel, Render, etc. The documentation / guides for deploying a simple application on a VPS were not great (comparing to something like Ruby on Rails).

Some other issues I faced:
  * API Support: It feels like NextJS is targeted more towards web development instead of just pure API development. My initial plan was to utilise an API in the frontend and use the same API to expose to customers who may want to use the product directly via API. Implementing this is possible, but there is a lot of duplicate code in each API handler (for authentication, context setting, permissions, etc).
  * Documentation: Several times I ended up spending time in reading and writing code which was incorrect as I was referring to an incorrect "Router" implementation. Some of the google searches go to the "App Router" docs and some of them go into the "Page Router" docs. After days, I made it a habit to first check if I am reading the correct documentation.
  * Logging in NextJS: Once you build a production bundle, the app stops logging the requests/responses. Some custom loggers/middleware updates have to be done in order to get the logging back.
  * Middleware Runtimes: The runtime for middleware is "different", some node packages can be used and some cannot. I did not find the middleware usage intuitive and was constantly confused on which kind of params to accept in the method.
  * Related to above: I felt that Cursor sometimes was creating code which was in the incorrect "Router" mode. And the errors did not help much this.

## "Launch", "Growth Hacking" and Feedback
I spent a lot of time on reading and watching videos on "Launching" and "Growth Marketing". It seems like Product Hunt was the place to go, and then some newer alternatives like Uneed, Peerlist. I created a twitter account for my product. My plan for marketing was to scan famous websites for spelling mistakes and then tag them in a tweet -> they would notice it and possibly reply with a "thanks" -> and this way I will get visibility and then my product will spread by "word of mouth" and soon I will be cashing in dollars ! :-D  That was my plan atleast..

### Twitter

I created a new twitter account and I am pretty sure it was/is probably under shadowban, I did not get a single reply, I was finding genuine mistakes in landing pages, docs and more. Continuing further was the hardest, and with no feedback, I was not motivated to continue. So as is pretty common, I thought I need to build more features :-D , so I spent another 2-3 days quickly creating a chrome extensions to allow scanning webpages without coming to my website. I also created a blog section and wrote one blog which I thought would definitely gain some traction.

But all this was not generating a single visit on my website. I had a free no sign-up required scanning service, still no one was scanning their website. I then started DMing indiehackers with issues found on their website, and luckily I got some replies thanking me (but no signups). I then reached out to builders with really small following < 1k, hoping they would be more responsive, but that wasn't the case.

### Reddit
After some days I got an idea to do a "free page scanning" post on one of the sub reddits for indiehackers and builders. That post got pretty good response, I scanned close to 30 websites. The product was working, the people were happy with the issues it was finding but again no one actually signed up :-(

Eventually I posted again on Reddit to get some guidance around the product and how to launch it. I got some really good and constructive feedback. The common theme here was "vitamin vs painkiller" analogy, almost everyone felt that this product is a vitamin and not a painkiller. And they were right, I found several landing pages with some mistakes, but those were not "critical" mistakes in order to catch anyone's attention. Most of the product on a baseline had good enough "copy" (that's what they call the "landing page copy" in the marketing world).

### Urges
I did some more iterations on the product (thanks to rapid developmen with Cursor), I thought maybe the landing page is not intuitive, or maybe the feature descriptions are missing logos and numerous other reasons as to why I am not getting any users. In a non-AI world, I would not have spent so much time on the UI, as it takes a lot of time to do manually (for me). But with Cursor, I was just acting like a frantic product manager asking my dev team to create multiple alternatives hoping something would just work.

I then did a small course on  SEO with NextJS and created dedicated pages, like "free landing page scanner". I scanned some more websites and sent cold emails to some of the founders/agencies who were developing websites in order to get their attention. I create a new LinkedIn account and reached out to some web dev agency owners, but none replied. I spent a lot of time to go through their projects, find their org structure, and determine the correct people to reach out to.

At one point I had to resist the urge to automate the entire chain:
1. get newly launched websites from ProductHunt.
2. Scan their landing pages.
3. If there are any issues found, create a publicly shareable link.
4. Fetch email ids from Apollo or similar websites.
5. Send them a personalised email with the link to their report.
    * utilising LLMs for create the mail content etc.
6. Add tracking params to these links and send an alert if someone visits / creates an account etc.

### Product Hunt and The Growth Hacker Call
Without any other option in sight, I decided to launch on Product Hunt (and similar alternatives). That's when I realised the sheer amount of products which are being launched everyday...do people use these ? Are there so many people searching for new products everyday ? voting, commenting on products, giving feedback ?

It was pretty overwhelming to see big well funded companies launching products everyday. How will I compete with them ? Most of the products already had tons of users, very rarely were there products from unknown names / solo devs or with zero users. Some products were being launched again after a launch done an year ago. 
The only thing I could understand from all this was the need for someone to "hunt" your product. If one of these product hunters hunt your product (According to PH) there is a good chance that more people will notice you. That's exactly what I wanted, I wanted to be noticed !

So I reached out to one very famous growth hacker / product hunter on LinkedIn and we connected over a call. He gave some good inputs, but eventually it came down to the "offerings". They had different packages, under some packages they would create high quality Reddit posts from high Karma users to boost visibility and under some they would completely take over your marketing (SEO, blogs, etc), other ones would provide high quality backlinks to the website. There were lots of "tactics" under this so called "Growth Hacking" strategy and according to him that's the only way to get a new unknown product out in the world.

That's when I decided that I am too deep in this rabbit hole for now...

## Giving Up
I did a "Show HN" on HackerNews as one last attempt to get some traction and as you might have guessed, it did not get any attention. I did not want to spend more time on marketing the product, as all those felt shots on the dark. My learnings from this project has reinforced what I knew theoretically from countless other blogs posts and tips:

* Building a product is not the hard part, it's getting users to use it and even harder: getting users to pay for it.
* Get users first before building.
* Do not build something which you will not use.

### Open Sourcing

After making exactly 0 dollars (and spending around 20 dollars on domain, infra & LLM tokens), I decided to stop working on it further. On the bright side I learnt a lot of things around development, UI/UX and marketing. I never had any big hopes to begin with, so I did not feel like some kind of failure at the end of this all. If this would have taken off, I would be really happy with it. If you are interested here is the Github Repo: https://github.com/pulkitsharma07/spelltastic.io and the website is live here: https://spelltastic.io.

If you plan to build something using this or want to discuss some other ideas, please reach out to me !

### Is this Blog part of the growth strategy for the product ?
For the curious ones, no. This post is not in any way to get any growth for my product. I am writing this blog to document my journey and learnings from this project (and writing a retrospective post at the end of it all was always the goal). If anything, this blog post is a growth strategy for my personal self, so that people can know the kind of things I have worked on / built and my thought process behind those. This blog post is being written to close the loop on this entire thing.