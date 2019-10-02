FROM nginx:1.14.0 AS base

# Set Timezone
USER root

ARG TZ=UTC
ENV TZ ${TZ}

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# End Timezone

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log


# Set Target : develop
FROM base AS dev
# End Target : develop


# Set Target : production
FROM base AS prod
# End Target : production