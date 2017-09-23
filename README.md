This the master branch which contains the built website.
i.e. contents of the `_site` folder after running `jekyll build`

This was done because Github Pages seems to now allow the jekyll-whiteglass theme. (I got a build failure email, when `master` contained by jekyll root directory)

`development` branch will have the jekyll root directory (without the `_site_` folder)

Need to write a build process to deploy to Github Pages, i.e. this repository. I will create/work in the development branch.

`bundle exec jekyll build`
`mv _site /tmp/`
`git checkout master`
`mv /tmp/_site/* .`
`git push origin master`