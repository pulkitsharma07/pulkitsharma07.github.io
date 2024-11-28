---
title:  "Svelte: The frontend framework I have finally started to get into"
date:   2023-05-22 10:05:00 +0530
published: false
categories: software
toc: true
toc_sticky: true
---

# Background
When I starting learning javascript around 10 years ago, I used to make user interfaces using the hundreds of `document.findElementBy....` calls and trying to wrangle multiple things like DOM events mixed with some jquery to make something work. Using CSS was painful as well, and there were no clear opinionated ways of doing things. In short, I never felt comfortable with  frontend development. I used to start with some goals, but then those goals seemed impossible to achieve and I had to get okay with just making things work somehow. So I stopped keeping any goals with frontend development, apart from functionality. I was never able to think of a design/feature and replicate it exactly using HTML/CSS/JS. My process was more around tweaking few things and to get the design as close as possible. Hence I decided that "frontend" was not my cup of tea. 

When I discovered Ruby on Rails, and it was such a pleasant experience. The official guide along with [RailsCasts](http://railscasts.com/) was immesenly helpful in giving opinionated and "design patterns" for working with rails. All of that was missing with frontend, everyone had (and still has) hundreds of different ways to do things. No one seems to agree on the correct approach. Frontend frameworks were dying/born again and seemed to difficult to get into.

# Rapid Development
Since then lots of things have changed, but one thing that has not changed for me is reading HackerNews every single day. That has allowed me to keep a high level visibility of how frontend development has been evolving. But that has also created a lot of confusion. On any post related to `React`, the so called "react experts" don't agree even on the official tutorial/documentation.Both `React` and `Vue` did not feel intuitive to me at all (just from a cursory look) and required some considerable investement to be something productive. I never had that time due to my day job and working on other backend related projects in free time. Every 2-3 years I used to write something involving the frontend, so that I just don't forget to build something with which a vast majority of people interact with. But I was never able to develop anything "modern" in terms of look and functionality. 

# Svelte
There were occasional posts about Svelte on HN, and almost everytime I saw people generally showing admiration for it (quite rare on HN). But I never went deeper into it. The next time I met Svelte was in the [PocketBase](https://github.com/pocketbase/pocketbase) codebase. I was really amazed at how such a beautiful UI can be rendered off a single Golang binary. This time I decided to finally take some time off of backend stuff and try to actually learn something on the frontend. My goal was to demistify all the jargons like SSR, SSG, Hydration etc and actually figure out when to use what. Even with `Svelte`, there is `SvelteKit` and it was not exactly clear which is for what. `SvelteKit` is not exactly like a full blown backend framework like Django or Rails and it is not exactly just on the frontend. 



