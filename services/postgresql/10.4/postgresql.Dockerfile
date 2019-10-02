FROM postgres:10.4 AS base

# Set Timezone
USER root

ARG TZ=UTC
ENV TZ ${TZ}

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# End Timezone


# Set Target : develop
FROM base AS dev
# End Target : develop


# Set Target : production
FROM base AS prod
# End Target : production