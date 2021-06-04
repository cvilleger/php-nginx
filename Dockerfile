FROM webdevops/php-nginx:8.0-alpine

RUN set -x \
    && apk add autoconf gcc g++ rabbitmq-c-dev make \
    && pecl install amqp-1.11.0beta \
    && docker-php-ext-enable amqp \
    && docker-run-bootstrap \
    && docker-image-cleanup
