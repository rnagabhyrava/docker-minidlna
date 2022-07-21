FROM alpine:latest

# install minidlna
RUN apk --no-cache add minidlna

# Add config file
ADD minidlna.conf /etc/minidlna.conf

# Copy entrypoint
COPY entrypoint.sh /usr/bin/

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT [ "entrypoint.sh" ]

# docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t rnagabhyrava/minidlna:<tag> --push .