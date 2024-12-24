---
title:  "About 'Permutation City'"
date:   2024-12-23 10:00:00 +0530
published: true
categories: personal learning books
toc: true
toc_sticky: true
---

## On Note Taking

While reading "The Three-Body Problem", I developed this habit of keeping a small notebook with me to jot down key moments of a chapter. The purist inside me wanted to fight back and force myself to remember everything. Taking notes felt too "academic".. but then I just did what I felt was making things more enjoyable rather than do something to cater to the perfectionist inside me... so I took notes.. and I also read them before I picked up the book again.

I found it to be immensely helpful to keep track of what was happening and saved myself from unnecessary cognitive load of remembering things in realtime (while reading). I followed the same approach with Permutation City. 

# Why you should read Permutation City ? (No Spoilers)

This was my second sci-fi book. There were times where I had to keep the book down and just re-read and try to grasp what the author was conveying. These challenging bits were the most interesting to me, and it also lead me down to discover the FAQ of the book hosted online by the author (Greg Egan).

You should read this book:
* If you have done some work around creating games or simulations.
* If you are interested in learning about recursion, fractals, etc
    * The book doesn't exactly touch on these but if you are interested in these things, the concepts covered in the book might be of interest to you as well.
* At times you question the nature of consciousness / reality.

## If you have not read this book, thank you for reading this blog post, you can leave now


# For People Who Have Read this Book (Heavy Spoilers)
*!! Please skip this section if you are planning to read the book. !!*

## What I liked

### Experiments on the Copies
I think the best part of the book were the experiments done by Paul Durham on his copy. Especially the very first set of experiment mentioned in the book where the copy is unable to escape the environment.

### Public Compute Capacity
The way people can bid for public compute capacity gave a very AWS Spot instancy feeling.

### Dealing with both micro and macro simulations
While personally thinking about simulating reality, the main question we often face is: how good the simulation should be ?
* (micro-simulation) Should it even simulate at the level of planck length, i.e. simulate atomic and sub-atomic particles and their interactions ? Perhaps also dive into quantum interactions ?
OR
* (macro-simulation) Should it stick to a level of reality which we normally perceive in our daily life with our five senses. Which is a kind of "distance culling" approach applied to our reality.

This book attempts to deal with both sets of these simulation paradigms instead of just picking one over another. Hypothetically, due to the book belonging in the "sci-fi" category, the author could have easily leveraged that freedom and claim a working micro-simulation which renders a complete believable reality on all the levels (perceived and non-perceived).
But instead the author proposed a somewhat "humble" and crude set of simulations, with their own set of interesting limitations and workarounds. These imperfect simulations and software drop you in between the action of figuring things out and thinking about various improvements / shortcoming of the system overall. These were the best moments for me while reading this book.

### Hiding a program inside a program
This was one of the most important plot points for me. When I first stumbled upon this in the book, I thought of various ways to achieve this.. Compression ? Some kind of AST mish-mash magic ? But what was proposed in the book was even cleverer: extra dimensions. To put is simply use 3D coordinates for representing 2D data, and "hiding" the extra information in the unused 3rd dimension of the vectors.
Unfortunately the book never really expanded upon this concept. Instead this was used to convey a story of a couple, which I honestly found a bit boring. (More on that in the section below)
I have plans to create a small working demo for some simple ruby scripts. But I am pretty sure I am underestimating the efforts involved here.

### MITM detection using change in latency
I am not sure about the exact state of technology (in our real world) when this book came out (1994), so I think this could be an actual implementable novel idea, this was my first time reading about this and it makes complete sense to me.
This is the way Paul finds out that there are some people intercepting his network traffic. Because of the potential additional hop in the interceptor's network card, he notices a change in the latency numbers. I wonder how realistic this would be to use in our current life today ? I guess not, because network paths keep on constantly shifting between two IPs on the internet plus a person doing MITM can mirror the entire set of bytes and then process them instead of actually intercepting the packets. For example, in the case of snooping on optical fibers, one can bend and decode the light "leaking" out of the cable. I wonder if this would impact any timings (or error correction schemes) on the receiver's or sender's end.

### The chapter names
Midway through the book, while reading about the book on the internet, I got to know that the chapter names were all permutations of each other :-D 
This was a really nice easter egg to discover, and ofcourse I felt dumb af discovering about this.

## What Could be Better
Although it is one of the best books I have ever read, I couldn't help but list down few things which I would expand more upon if I were to contribute to the writing process of this book.

### Dust Theory
My understanding of dust theory: consciousness can be rendered across disconnected events in time (i.e. non-linearly) AND disconnected points in space. 

As a thought experiment this is definitely intriguing, but this leads to numerous other possibilities:
* How many such configurations are there ? 
* Is each possible permutation of reality/time rendering a different version of a universe ?
* Are these universes stable ? How many of these configurations are pure noise ?
* With theoretically infinite amount of possible permutations, any possibility can be true. akin to the finite monkey theorem.
* Hence, you do not have to worry about whether you service or your clone survives or whatever happens in the past/present/future.

### Permutation City itself
The design of the city itself was never really touched upon. I wanted to know more about Carter, the architect of the City. As the booked is name after this City, I wanted to know more about how it was made, rendered, hidden, etc.
How Paul reached out to Carter ? Did they brainstorm about different ideas ?
The details about how they were hiding some set of people in the city were very interesting (covered in the "hiding a program inside a program" point above), but then again it was never expanded upon. My understanding was that these characters were supposed to invoke some deep philosophical thoughts in the reader about love ? or life ? or our interests ? It never really struck me as profound as some other philosophical topics covered in the book.

### Limited Compute Power
In the beginning there is one company which outbids everyone to buy significant amount of compute, I may be wrong, but I never quite understood what that company did with the compute power, was it just the hydropower project ? . Who were the people behind it ? What was the actual purpose ? just to run simulations for a hydropower plant ?


## Closing Thoughts
I can go on about what I liked and did not like about the book, but those are just my personal opinions based on my comprehension abilities (and memory). Needless, to say this is the best book I have ever read. Scifi books like this provokes thought as well as inspires me to write.
I think this quote from a reader from `r/gregegan` gave my good direction to think in:
> Permutation City was my first Egan read and I can only awe at the ideas and their execution. Interpretation has never seemed necessary for me to enjoy the novel.

> <A particular character> acting this way is a metaphor for something rather than an explanation for the reader to decipher

Need to balance and understand: reduction, fiction, metaphor, emotions
