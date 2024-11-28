# Self Hosting on Raspberry-pi
* Refer to `launch.sh`

The **master** branch contains the built website. It is generated automatically using the `deploy` script in the **development** branch.
**master** is essentially the contents of the `_site` folder after running `jekyll build`

This was done because Github Pages does not allow the jekyll-whiteglass theme. (I got a build failure email, when `master` contained the jekyll root directory)

`development` branch will have the jekyll root directory (without the `_site_` directory)

## Deploying
* `git checkout development`
* Make changes
* Build and Run docker container: `docker build . -t blog; docker run -v $(pwd):/home/pulkitsharma07.github.io/ -p 4000:4000 -it blog`
* Inside the container run: `bundle install; bundle exec jekyll serve -H 0.0.0.0`, to host demo server
* Inside the container run: `bundle install; bundle exec jekyll build --watch` to build the website
* From out of the container run: `./deploy.sh`, whenever you want to deploy to prod.
