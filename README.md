The **master** branch contains the built website. It is generated automatically using the `deploy` script in the **development** branch.
**master** is essentially the contents of the `_site` folder after running `jekyll build`

This was done because Github Pages does not allow the jekyll-whiteglass theme. (I got a build failure email, when `master` contained the jekyll root directory)

`development` branch will have the jekyll root directory (without the `_site_` directory)

## Deploying
* `git checkout development`
* Make changes
* Build and Run docker container: `docker build . -t blog; docker run -v $(pwd):/home/pulkitsharma07.github.io/ -it blog`
* Inside the container run: `bundle install; bundle exec jekyll build`
* Outside the container run: `./deploy.sh`
