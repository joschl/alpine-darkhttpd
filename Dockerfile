FROM alpine
RUN apk upgrade --no-cache && \
    apk add darkhttpd --no-cache

COPY public /htdocs

EXPOSE 8080

CMD ["/usr/bin/darkhttpd", "/htdocs", "--port", "8080", "--no-server-id", "--no-keepalive"]
