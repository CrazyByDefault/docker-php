##
# Makefile for development environments
##

latest: Dockerfile
	@docker build -t activatedgeek/php:devel .

run:
	@docker run --rm \
		--name test-php \
		activatedgeek/php:devel php -i
