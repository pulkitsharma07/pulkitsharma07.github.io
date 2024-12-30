#!/bin/bash
filename=`date +%Y-%m-%d-new-post.markdown`

cat > ./_posts/$filename <<EOF
---
title: "Title"
date: `date` 
description: A description
categories: personal 
published: true
toc: true
toc_sticky: true
---
EOF
