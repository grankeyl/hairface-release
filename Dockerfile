FROM alpine:3.22
RUN apk add --no-cache ca-certificates && addgroup -S hairface && adduser -S -G hairface hairface
WORKDIR /app
COPY hairface /app/hairface
COPY web /app/web/dist
USER hairface
ENV APP_ENV=production PORT=8080 STATIC_DIR=web/dist
EXPOSE 8080
CMD ["/app/hairface"]
