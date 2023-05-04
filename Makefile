start_dev_server:
	docker build . -t blog; docker run -v $$(pwd):/home/pulkitsharma07.github.io/ -p 9998:4000 -it blog

deploy:
	 chown -R pulkit:pulkit _site
	 chown -R pulkit:pulkit .sass-cache
	 ./deploy
