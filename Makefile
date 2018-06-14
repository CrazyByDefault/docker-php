##
# Makefile for development environments
##

latest: Dockerfile
	@docker build -t crazybydefault/php:devel .

run:
	@docker run --rm \
		--name test-php \
		crazybydefault/php:devel php -i
