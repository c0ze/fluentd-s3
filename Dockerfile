# or v1.0-onbuild
FROM fluent/fluentd:stable-onbuild

# below RUN includes plugin as examples elasticsearch is not required
# you may customize including plugins as you wish

RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev
RUN sudo gem install fluent-plugin-s3
RUN sudo gem sources --clear-all
RUN apk del .build-deps
RUN rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.4.0/cache/*.gem
RUN mkdir -p /var/log/fluent/s3
RUN chmod -R 777 /var/log/fluent
