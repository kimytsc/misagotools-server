FROM alpine:latest

###########################################################################
# Set Timezone
###########################################################################

USER root

ARG TZ=UTC
ENV TZ ${TZ}

RUN apk add --no-cache tzdata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

RUN apk --no-cache add dnsmasq

# EXPOSE 53/tcp 53/udp

VOLUME ["/etc/dnsmasq"]

CMD ["dnsmasq"]
