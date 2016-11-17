FROM smebberson/alpine-nginx-nodejs

# Stream the nginx logs to stdout and stderr
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

ADD root /
ADD app /app
RUN cd /app && npm install --production
