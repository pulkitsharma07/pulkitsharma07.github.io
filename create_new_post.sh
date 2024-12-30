#!/bin/bash
filename=`date +%Y-%m-%d-new-post.markdown`

cat > ./_posts/$filename <<EOF
---
title: "Title"
date: `date` 
description: A description
categories: personal 
social_image: add here
---
EOF
