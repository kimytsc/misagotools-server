FROM nginx:1.14.0

###########################################################################
# Set Timezone
###########################################################################

USER root

ARG TZ=UTC
ENV TZ ${TZ}

# RUN apk add --no-cache tzdata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log