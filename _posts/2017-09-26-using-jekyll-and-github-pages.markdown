---
layout: post
title:  "Using Jekyll and Github Pages (in 2017)"
date:   2017-09-23 18:43:34 +0530
categories: jekyll blog github
---

After reading numerous posts online for using Jekyll and Github Pages together, I faced couple of issues. Lets take a look and see how I addressed some of them.

* Jekyll 3 now recommends using Gem-based themes. I was not able to find themes other than the ones mentioned [here](https://github.com/planetjekyll/awesome-jekyll-themes).
* Github Pages does not supports all of the Jekyll Gem-based themes.
* The ones [supported](https://pages.github.com/themes/) by Github are not exactly blog like.

### I am lazy and wanted an easy way of getting the blog up and running with minimal efforts.

After spending considerable amount of time looking for a perfect theme (And giving up numerous times). I decided to go the basic whiteglass theme. It has support for Disqus comments and some other SEO stuff. I didn't want to spend time figuring stuff out, so I went ahead with it.

I cloned the repo and had the blog running locally, it was time to push to my `.github.io` repo. After, refreshing 3-4 times all I was staring at was a blank white screen. Soon, I got a mail from Github regarding a build warning.

*You are attempting to use a Jekyll theme, "jekyll-whiteglass", which is not supported by GitHub Pages*

## The Fix

Instead of serving a Jekyll Project directly from the `master` branch of the `github.io` repository, we can instead serve the static files generated from the `jekyll build` command, i.e. the contents of the `_site` directory.
This way, we will remove dependency on Github Pages to build the Jekyll Project, instead it will only serve the static pages.

Since, the `master` branch will have the "built" website, where should we store the actual Jekyll Project ?

In my case I have stored it in the `development` branch inside the same repository. I will work on the blog in this branch and will push the built website to the `master` branch. I have seen some repositories where people have written Travis jobs to do this exact thing. I feel that is an overkill, a slow process and downright exploitation of a free service. Please correct me I am wrong.

I have written a small shell script which will build the website and push the changes to the `master` branch. Here it is:

```sh
#! /bin/sh

BUILD_DIR="./_site"
TMP_DIR="/tmp/jekyll_build"
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Delete old build files if any
rm -rf $BUILD_DIR

# Build
bundle exec jekyll build

# If Build succeeds
if [ -d "$BUILD_DIR" ]; then
    echo "JEKYLL: BUILD SUCCESS"
    rm -r $TMP_DIR

    # Move BUILD_DIR to /tmp
    mv $BUILD_DIR $TMP_DIR

    # Change branch to master
    if git checkout master; then
      echo "SUCCESSFULLY SWITCHED TO MASTER"

      # Cleanup
      ls | xargs rm -r

      # Get the build
      mv $TMP_DIR/* .

      # Commit
      git add .
      git commit -m "Deploy $(date)"
      if git push origin master; then
        echo "DEPLOYED SUCCESSFULLY !"
        echo $(basename $(git remote show -n origin | grep Fetch | cut -d: -f2-))
      else
        echo "DEPLOY FAILED !"
      fi
    else
      echo "CANNOT SWITCH BRANCH, ABORTING"
    fi

else
    echo "JEKYLL: BUILD FAILURE"
fi

git checkout $CURRENT_BRANCH
```
This script lives in the `development` branch.

After I am done doing my changes to the blog. I push it to `development`, and then do `./deploy`. The script will then make a new commit on `master` having your latest masterpiece.

Enjoy !

First  post , Yooo !
